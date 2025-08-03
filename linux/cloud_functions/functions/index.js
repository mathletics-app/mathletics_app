const functions = require("firebase-functions");
const admin = require("firebase-admin");
const crypto = require("crypto");
admin.initializeApp();

const PASS_PHRASE = 'LQ1911003-qhen412'; // Your PayFast passphrase

function verifyPayFastSignature(body, passphrase) {
  const params = { ...body };
  const receivedSignature = params.signature;
  if (!receivedSignature) return false;
  delete params.signature;

  const sortedKeys = Object.keys(params).sort();
  const paramString = sortedKeys.map(key => `${key}=${params[key]}`).join('&');
  const stringToHash = paramString + passphrase;

  const hash = crypto.createHash('md5').update(stringToHash).digest('hex');
  return hash.toLowerCase() === receivedSignature.toLowerCase();
}

exports.handlePayFastWebhook = functions.https.onRequest(async (req, res) => {
  if (req.method !== "POST") {
    return res.status(405).send("Method Not Allowed");
  }

  try {
    if (!verifyPayFastSignature(req.body, PASS_PHRASE)) {
      console.error('❌ Invalid signature');
      return res.status(403).send("Forbidden: Invalid signature");
    }

    const email = req.body.email;
    const paymentStatus = req.body.payment_status;

    if (!email) {
      console.error('❌ Missing email in webhook');
      return res.status(400).send("Missing email");
    }

    if (paymentStatus !== 'COMPLETE') {
      console.log(`Payment status is not COMPLETE: ${paymentStatus}, ignoring webhook`);
      return res.status(200).send("Payment not complete");
    }

    const expiryDate = new Date();
    expiryDate.setMonth(expiryDate.getMonth() + 1);

    await admin.firestore().collection("users").doc(email).set({
      subscriptionActive: true,
      subscriptionExpiry: admin.firestore.Timestamp.fromDate(expiryDate),
    }, { merge: true });

    console.log(`✅ Subscription upgraded for ${email}`);
    return res.status(200).send("OK");
  } catch (error) {
    console.error("❌ Webhook error:", error);
    return res.status(500).send("Server Error");
  }
});
