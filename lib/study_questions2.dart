final Map<String, List<Map<String, String>>> studyQuestions2 = {
  "FTC part 1 & 2": [
    {
      "question": r"Let \( F(x) = \int_0^x t^2 \, dt \).\nWhat is \( F'(x) \)?",
      "answer": r"Step 1: Identify the integral \( F(x) = \int_0^x t^2 \, dt \).\n"
      r"Step 2: Since the upper limit is \( x \), we apply FTC Part 1.\n"
      r"Step 3: By FTC Part 1, \( F'(x) = t^2 \) evaluated at \( t = x \).\n"
      r"Answer: \( F'(x) = x^2 \).\n\n"
      r"Remember this:\n"
      r"Fundamental Theorem of Calculus Part 1 states:\n"
      r"If \( F(x) = \int_a^x f(t)\, dt \), then \( F'(x) = f(x) \)."
    },
    {
      "question": r"Let \( F(x) = \int_0^x t^3 \, dt \).\nWhat is \( F'(x) \)?",
      "answer": r"Just apply FTC Part 1: evaluate the integrand \( t^3 \) at \( t = x \)."
    },
    {
      "question": r"Let \( F(x) = \int_2^{\sqrt{x}} t^2 \, dt \).\nFind \( F'(x) \).",
      "answer": r"Use the chain rule with FTC Part 1: evaluate \( t^2 \) at \( t = \sqrt{x} \), then multiply by the derivative of \( \sqrt{x} \)."
    },

    {
      "question": r"Let \( f(x) = \int_1^x (3t^2 + 2t) \, dt \).\nFind \( f(x) \).",
      "answer": r"Step 1: By FTC Part 2, we can compute the definite integral directly using antiderivatives.\n"
      r"Step 2: The antiderivative of \( 3t^2 + 2t \) is \( t^3 + t^2 + C \).\n"
      r"Step 3: \( f(x) = [t^3 + t^2]_1^x = (x^3 + x^2) - (1^3 + 1^2) \).\n"
      r"Step 4: \( = x^3 + x^2 - 1 - 1 = x^3 + x^2 - 2 \).\n\n"
      r"Remember:\n"
      r"FTC Part 2 states: \(\int_a^b f(x)\,dx = F(b) - F(a)\), where \(F'(x) = f(x)\).\n"
      r"Find the antiderivative \(F\), then evaluate at upper and lower limits and subtract.\n"
      r"In our case, \(a=1\), \(b=x\), so \( f(x) = G(x) - G(1) \).\n"
      r"Integrate \(g(t) = 3t^2 + 2t\) to get \(G\), then calculate \(G(x)-G(1)\).\n"
      r"Don’t be confused by \(x\) or \(x^2\) in the bounds, just write the general formula and apply carefully!"
    },
    {
      "question": r"Let \( f(x) = \int_2^x (4t^2 - t) \, dt \).\nFind \( f(x) \).",
      "answer": r"Find the antiderivative of the integrand, then evaluate it at \( x \) and \( 2 \), and subtract."
    },
    {
      "question": r"Let \( f(x) = \int_1^x \frac{1}{t^2 + 1} \, dt \).\nFind \( f(x) \).",
      "answer": r"Recall the antiderivative of \( \frac{1}{t^2 + 1} \) is \( \tan^{-1}(t) \); evaluate \( \tan^{-1}(x) - \tan^{-1}(1) \)."
    },

    {
      "question": r"Let \( G(x) = \int_1^x \sin(t) \, dt \).\nFind \( G'(x) \).",
      "answer": r"Step 1: We are given \( G(x) = \int_1^x \sin(t) \, dt \).\n"
      r"Step 2: Using FTC Part 1, the derivative of the integral with respect to \( x \) is the integrand evaluated at \( x \).\n"
      r"Step 3: So, \( G'(x) = \sin(x) \).\n\n"
      r"Remember this:\n"
      r"Fundamental Theorem of Calculus Part 1:\n"
      r"If \( G(x) = \int_a^x f(t) \, dt \), then \( G'(x) = f(x) \)."
    },
    {
      "question": r"Let \( G(x) = \int_2^x \cos(t) \, dt \).\nFind \( G'(x) \).",
      "answer": r"Just apply FTC Part 1: the derivative is the integrand \( \cos(x) \)."
    },
    {
      "question": r"Let \( G(x) = \int_1^{x^2} \sin(t) \, dt \).\nFind \( G'(x) \).",
      "answer": r"Use chain rule: evaluate \( \sin(t) \) at \( t = x^2 \), and multiply by derivative of \( x^2 \)."
    },

    {
      "question": r"If \( H(x) = \int_3^x \frac{1}{t} \, dt \),\nwhat is \( H'(x) \)?",
      "answer": r"Step 1: The integral is \( H(x) = \int_3^x \frac{1}{t} \, dt \).\n"
      r"Step 2: By FTC Part 1, since \( x \) is the upper limit, derivative is simply the integrand at \( t = x \).\n"
      r"Step 3: \( H'(x) = \frac{1}{x} \).\n\n"
      r"Remember this:\n"
      r"Fundamental Theorem of Calculus Part 1:\n"
      r"If \( H(x) = \int_a^x f(t)\, dt \), then \( H'(x) = f(x) \)."
    },
    {
      "question": r"If \( H(x) = \int_1^x \frac{1}{1 + t^2} \, dt \), find \( H'(x) \).",
      "answer": r"Apply FTC Part 1 directly: derivative is the integrand evaluated at \( x \)."
    },
    {
      "question": r"If \( H(x) = \int_2^{x^3} \frac{1}{t} \, dt \), find \( H'(x) \).",
      "answer": r"Use chain rule: evaluate \( \frac{1}{t} \) at \( x^3 \), then multiply by derivative of \( x^3 \)."
    },

    {
      "question": r"Evaluate \( \int_0^{\pi} \sin(x) \, dx \).",
      "answer": r"Step 1: Find the antiderivative of \( \sin(x) \), which is \( -\cos(x) \).\n"
      r"Step 2: Apply FTC Part 2:\n"
      r"\( \int_0^{\pi} \sin(x) \, dx = [-\cos(x)]_0^{\pi} = -\cos(\pi) + \cos(0) \).\n"
      r"Step 3: \( \cos(\pi) = -1, \cos(0) = 1 \), so result = \(-(-1) + 1 = 1 + 1 = 2 \).\n"
      r"Final Answer: \( 2 \)."
    },
    {
      "question": r"Evaluate \( \int_0^{\frac{\pi}{2}} \cos(x) \, dx \).",
      "answer": r"Use FTC Part 2: antiderivative of \( \cos(x) \) is \( \sin(x) \); evaluate from \( 0 \) to \( \frac{\pi}{2} \)."
    },
    {
      "question": r"Evaluate \( \int_0^{2\pi} \sin^2(x) \, dx \).",
      "answer": r"Use the identity \( \sin^2(x) = \frac{1 - \cos(2x)}{2} \), then integrate term-by-term."
    },
    {
      "question": r"Let \( f(x) = \int_x^5 \ln(t) \, dt \).\nFind \( f'(x) \).",
      "answer": r"Step 1: We have \( f(x) = \int_x^5 \ln(t) \, dt \), with \( x \) as the lower limit.\n"
      r"Step 2: By FTC Part 1, if \( x \) is the lower limit, we add a negative sign.\n"
      r"Step 3: So \( f'(x) = -\ln(x) \)."
    },
    {
      "question": r"Let \( f(x) = \int_x^4 \sqrt{t} \, dt \).\nFind \( f'(x) \).",
      "answer": r"Since the lower limit is \( x \), FTC Part 1 gives negative of the integrand evaluated at \( x \)."
    },
    {
      "question": r"Let \( f(x) = \int_{x^2}^5 \ln(t^2 + 1) \, dt \).\nFind \( f'(x) \).",
      "answer": r"Use chain rule with negative sign: evaluate at \( x^2 \), then multiply by derivative of \( x^2 \)."
    },

    {
      "question": r"Let \( F(x) = \int_{\cos(x)}^{x^2} e^{t^2} \, dt \).\nFind \( F'(x) \).",
      "answer": r"Step 1: Two variable limits; use Leibniz Rule (FTC Part 2).\n"
      r"Step 2: \( F'(x) = e^{(x^2)^2} \cdot \frac{d}{dx}(x^2) - e^{(\cos(x))^2} \cdot \frac{d}{dx}(\cos(x)) \).\n"
      r"Step 3: \( = e^{x^4} \cdot 2x - e^{\cos^2(x)} \cdot (-\sin(x)) \).\n"
      r"Step 4: \( F'(x) = 2x e^{x^4} + \sin(x) e^{\cos^2(x)} \)."
    },
    {
      "question": r"Let \( F(x) = \int_{\sin(x)}^{x^2} \cos(t^2) \, dt \).\nFind \( F'(x) \).",
      "answer": r"Apply Leibniz Rule: evaluate the integrand at upper and lower bounds, times their derivatives, using chain rule."
    },
    {
      "question": r"Let \( F(x) = \int_{\tan(x)}^{x^3} \ln(t^2 + 1) \, dt \).\nFind \( F'(x) \).",
      "answer": r"Use FTC Part 2 with chain rule: evaluate integrand at upper and lower bounds, multiply by derivatives of bounds."
    },

    {
      "question": r"Given \( F(x) = \int_{1}^{\tan(x)} \sqrt{1+t^3} \, dt \),\ncompute \( F'(x) \).",
      "answer": r"Step 1: Upper limit is \( \tan(x) \), apply FTC Part 2 and Chain Rule.\n"
      r"Step 2: \( F'(x) = \sqrt{1 + \tan^3(x)} \cdot \sec^2(x) \).\n"
      r"The derivative of \( \tan(x) \) is \( \sec^2(x) \)."
    },
    {
      "question": r"Let \( F(x) = \int_0^{\sin(x)} \sqrt{1 + t^4} \, dt \).\nFind \( F'(x) \).",
      "answer": r"Use FTC Part 2: evaluate integrand at \( \sin(x) \), multiply by derivative \( \cos(x) \)."
    },
    {
      "question": r"Let \( F(x) = \int_{e^x}^{x^2} \sqrt{t^3 + 1} \, dt \).\nFind \( F'(x) \).",
      "answer": r"Use Leibniz Rule: apply FTC Part 2 with both bounds variable, chain rule on each."
    },

    {
      "question": r"Compute \( \int_{1}^{4} \frac{\ln(x)}{x} \, dx \).",
      "answer": r"Step 1: Let’s find the antiderivative. We know that \( \int \frac{\ln(x)}{x} \, dx = \frac{(\ln(x))^2}{2} + C \).\n"
      r"Step 2: Using FTC Part 2:\n"
      r"\( = \frac{(\ln(4))^2}{2} - \frac{(\ln(1))^2}{2} \).\n"
      r"Step 3: \( \ln(1) = 0 \), \( \ln(4) = 2 \ln(2) \),\n"
      r"Step 4: \( = \frac{(2\ln(2))^2}{2} = \frac{4 (\ln(2))^2}{2} = 2 (\ln(2))^2 \).\n"
      r"Final Answer: \( 2 (\ln(2))^2 \)."
    },
    {
      "question": r"Evaluate \( \int_{1}^{e} \frac{\ln(x)}{x} \, dx \).",
      "answer": r"Use same antiderivative \( \frac{(\ln(x))^2}{2} \), evaluate at bounds \( x = e \) and \( x = 1 \)."
    },
    {
      "question": r"Evaluate \( \int_{1}^{9} \frac{(\ln x)^3}{x} \, dx \).",
      "answer": r"Try substitution \( u = \ln x \); then integral becomes a power of \( u \)."
    },

    {
      "question": r"Let \( F(x) = \int_{x}^{x^3} \ln(t) \, dt \).\nFind \( F'(x) \).",
      "answer": r"Step 1: Both limits are variable; apply Leibniz Rule (FTC Part 2):\n"
      r"\( F'(x) = \ln(x^3) \cdot 3x^2 - \ln(x) \cdot 1 \).\n"
      r"Step 2: \( \ln(x^3) = 3 \ln(x) \), so:\n"
      r"\( F'(x) = 3x^2 \cdot 3 \ln(x) - \ln(x) = (9x^2 - 1)\ln(x) \)."
    },
    {
      "question": r"Let \( F(x) = \int_{x}^{x^2} \ln(t) \, dt \).\nFind \( F'(x) \).",
      "answer": r"Use FTC Part 2: evaluate integrand at both limits, multiply by their derivatives, then subtract."
    },
    {
      "question": r"Let \( F(x) = \int_{x^2}^{x^3} \ln(t^2 + 1) \, dt \).\nFind \( F'(x) \).",
      "answer": r"Apply FTC Part 2: evaluate at both bounds, use chain rule on \( x^2 \) and \( x^3 \)."
    },

    {
      "question": r"If \( F(x) = \int_{x^2}^{e^x} \frac{1}{1+t^2} \, dt \),\nfind \( F'(x) \).",
      "answer": r"Step 1: Use Leibniz Rule (FTC Part 2):\n"
      r"\( F'(x) = \frac{1}{1 + (e^x)^2} \cdot e^x - \frac{1}{1 + (x^2)^2} \cdot 2x \).\n"
      r"Step 2: Simplify terms:\n"
      r"\( F'(x) = \frac{e^x}{1 + e^{2x}} - \frac{2x}{1 + x^4} \)."
    },
    {
      "question": r"If \( F(x) = \int_{x^2}^{e^x} \frac{1}{1 + t^4} \, dt \), find \( F'(x) \).",
      "answer": r"Use FTC Part 2: evaluate integrand at upper and lower limits, then multiply by their derivatives."
    },
    {
      "question": r"If \( F(x) = \int_{\ln(x)}^{x^3} \frac{1}{1 + t^2} \, dt \), find \( F'(x) \).",
      "answer": r"Use chain rule on both bounds: derivative of \( \ln(x) \) and \( x^3 \), then apply FTC Part 2."
    }
  ],
  "Techniques of Integration": [
    {
      "question": r"Substitution\n(a) Evaluate \( \int 2x \cdot \cos(x^2) \, dx \).\n(b) Evaluate \( \int \frac{x}{\sqrt{1 + x^2}} \, dx \).",
      "answer": r"(a) Step 1: Let \( u = x^2 \), \( du = 2x \, dx \).\n"
      r"Step 2: Integral becomes \( \int \cos(u) \, du = \sin(u) + C \).\n"
      r"Step 3: Answer = \( \sin(x^2) + C \).\n\n"
      r"(b) Step 1: Let \( u = 1 + x^2 \), \( du = 2x \, dx \), \( x \, dx = \frac{du}{2} \).\n"
      r"Step 2: \( \int \frac{x}{\sqrt{1 + x^2}} \, dx = \int \frac{1}{2} u^{-1/2} \, du = u^{1/2} + C \).\n"
      r"Step 3: Answer = \( \sqrt{1 + x^2} + C \)."
    },
    {
      "question": r"Evaluate \( \int 6x \cdot \sin(x^2) \, dx \).",
      "answer": r"Hint: Let \( u = x^2 \), so \( du = 2x \, dx \), which means \( 6x \, dx = 3du \). Final integral becomes \( \int 3 \sin(u) \, du = -3 \cos(x^2) + C \)."
    },
    {
      "question": r"Evaluate \( \int \frac{x^3}{\sqrt{1 + x^4}} \, dx \).",
      "answer": r"Hint: Let \( u = x^4 \), then \( du = 4x^3 dx \), so the integral becomes \( \int \frac{1}{4} u^{-1/2} \, du = \frac{1}{2} \sqrt{x^4 + 1} + C \)."
    },

    {
      "question": r"Integration by Parts\n(a) Evaluate \( \int x e^x \, dx \).\n(b) Evaluate \( \int x^2 \ln(x) \, dx \).",
      "answer": r"(a) Step 1: Let \( u = x, dv = e^x \, dx \), \( du = dx, v = e^x \).\n"
      r"Step 2: \( \int x e^x \, dx = x e^x - \int e^x \, dx = x e^x - e^x + C \).\n\n"
      r"(b) Step 1: Let \( u = \ln(x), dv = x^2 \, dx \), \( du = \frac{1}{x} dx, v = \frac{x^3}{3} \).\n"
      r"Step 2: \( \int x^2 \ln(x) \, dx = \frac{x^3}{3} \ln(x) - \int \frac{x^3}{3} \cdot \frac{1}{x} \, dx \).\n"
      r"Step 3: \( = \frac{x^3}{3} \ln(x) - \frac{1}{3} \int x^2 \, dx \).\n"
      r"Step 4: Finish: \( \frac{x^3}{3} \ln(x) - \frac{1}{9} x^3 + C \)."
    },
    {
      "question": r"Evaluate \( \int x \cos(x) \, dx \).",
      "answer": r"Hint: Let \( u = x \), \( dv = \cos(x) dx \). Then \( du = dx \), \( v = \sin(x) \). Apply integration by parts: \( x \sin(x) - \int \sin(x) dx = x \sin(x) + \cos(x) + C \)."
    },
    {
      "question": r"Evaluate \( \int x^2 e^x \, dx \).",
      "answer": r"Hint: Use integration by parts twice. First: let \( u = x^2, dv = e^x dx \). Then integrate recursively using the result of \( \int x e^x dx \)."
    },

    {
      "question": r"Trigonometric Integrals\n(a) Evaluate \( \int \sin^2(x) \, dx \).\n(b) Evaluate \( \int \sin^4(x) \cos^2(x) \, dx \).",
      "answer": r"(a) Step 1: Use identity \( \sin^2(x) = \frac{1 - \cos(2x)}{2} \).\n"
      r"Step 2: \( \int \sin^2(x) \, dx = \frac{1}{2} \int 1 - \cos(2x) \, dx = \frac{x}{2} - \frac{\sin(2x)}{4} + C \).\n\n"
      r"(b) Step 1: Use \( \sin^2(x) = 1 - \cos^2(x) \) or power-reduction formulas.\n"
      r"Step 2: Rewrite \( \sin^4(x) = (\sin^2(x))^2 = \left( \frac{1 - \cos(2x)}{2} \right)^2 \).\n"
      r"Step 3: Expand and integrate term by term or use multiple-angle identities step by step to simplify before integration."
    },
    {
      "question": r"Evaluate \( \int \cos^2(x) \, dx \).",
      "answer": r"Hint: Use identity \( \cos^2(x) = \frac{1 + \cos(2x)}{2} \), so the integral becomes \( \frac{x}{2} + \frac{\sin(2x)}{4} + C \)."
    },
    {
      "question": r"Evaluate \( \int \sin^4(x) \cos^4(x) \, dx \).",
      "answer": r"Hint: Use power-reduction: \( \sin^2(x) = \frac{1 - \cos(2x)}{2}, \cos^2(x) = \frac{1 + \cos(2x)}{2} \), so their product can be squared and simplified using multiple-angle identities."
    },

    {
      "question": r"Trigonometric Substitution\n(a) Evaluate \( \int \frac{dx}{\sqrt{9 - x^2}} \).\n(b) Evaluate \( \int \frac{x^2}{\sqrt{x^2 + 4}} \, dx \).",
      "answer": r"(a) Step 1: Let \( x = 3 \sin(\theta), dx = 3 \cos(\theta) d\theta \), \( \sqrt{9 - x^2} = 3 \cos(\theta) \).\n"
      r"Step 2: Integral simplifies to \( \int \frac{3 \cos(\theta)}{3 \cos(\theta)} d\theta = \int d\theta = \theta + C \).\n"
      r"Step 3: \( x = 3 \sin(\theta) \rightarrow \theta = \sin^{-1}(x/3) \).\n"
      r"Answer: \( \sin^{-1}\left(\frac{x}{3}\right) + C \).\n\n"
      r"(b) Step 1: Let \( x = 2 \tan(\theta), dx = 2 \sec^2(\theta) d\theta, x^2 + 4 = 4 \tan^2(\theta) + 4 = 4 \sec^2(\theta) \).\n"
      r"Step 2: Integral becomes \( \int \frac{4 \tan^2(\theta)}{2 \sec(\theta)} \cdot 2 \sec^2(\theta) \, d\theta \), simplify and integrate."
    },
    {
      "question": r"Evaluate \( \int \frac{dx}{\sqrt{16 - x^2}} \).",
      "answer": r"Hint: Use \( x = 4 \sin(\theta) \), so the integral becomes \( \int d\theta = \sin^{-1}(x/4) + C \)."
    },
    {
      "question": r"Evaluate \( \int \frac{x^3}{\sqrt{x^2 + 1}} \, dx \).",
      "answer": r"Hint: Let \( x = \tan(\theta) \), so \( dx = \sec^2(\theta) d\theta \), and \( \sqrt{x^2 + 1} = \sec(\theta) \). Express \( x^3 \) and simplify the integral in terms of trig functions."
    },

    {
      "question": r"Partial Fractions\n(a) Decompose \( \frac{3x + 5}{(x + 1)(x + 2)} \).\n(b) Decompose \( \frac{2x^2 + 3x + 1}{(x + 1)(x^2 + 1)} \).",
      "answer": r"(a) Step 1: Set \( \frac{3x + 5}{(x + 1)(x + 2)} = \frac{A}{x + 1} + \frac{B}{x + 2} \).\n"
      r"Step 2: Multiply both sides and equate coefficients to solve for \( A, B \).\n"
      r"Step 3: Find \( A = 2, B = 1 \), so answer = \( \frac{2}{x + 1} + \frac{1}{x + 2} \).\n\n"
      r"(b) Step 1: \( \frac{2x^2 + 3x + 1}{(x + 1)(x^2 + 1)} = \frac{A}{x + 1} + \frac{Bx + C}{x^2 + 1} \).\n"
      r"Step 2: Multiply through by denominator and match coefficients to solve for \( A, B, C \).\n"
      r"Step 3: Full decomposition involves matching \( x^2, x, \) and constant terms systematically."
    },
    {
      "question": r"Decompose \( \frac{2x + 7}{(x + 1)(x + 3)} \).",
      "answer": r"Hint: Let \( \frac{2x + 7}{(x + 1)(x + 3)} = \frac{A}{x + 1} + \frac{B}{x + 3} \), then solve for \( A \) and \( B \) by equating coefficients."
    },
    {
      "question": r"Decompose \( \frac{x^3 + x^2 + x + 1}{(x + 1)(x^2 + 1)} \).",
      "answer": r"Hint: Try \( \frac{A}{x + 1} + \frac{Bx + C}{x^2 + 1} \). Multiply and group like terms to solve for the constants."
    },

    {
      "question": r"Partial Fractions Integration\n(a) Evaluate \( \int \frac{5}{(x + 1)(x + 2)} \, dx \).\n(b) Evaluate \( \int \frac{x + 3}{x^2 + 3x + 2} \, dx \).",
      "answer": r"(a) Step 1: Decompose \( \frac{5}{(x + 1)(x + 2)} = \frac{A}{x + 1} + \frac{B}{x + 2} \).\n"
      r"Step 2: Multiply both sides by \( (x + 1)(x + 2) \):\n"
      r"\( 5 = A(x + 2) + B(x + 1) \).\n"
      r"Step 3: Expand: \( 5 = A x + 2A + B x + B \).\n"
      r"Step 4: Group terms: \( 5 = (A + B) x + (2A + B) \).\n"
      r"Step 5: Coefficient matching:\n"
      r"\( A + B = 0, 2A + B = 5 \).\n"
      r"From \( B = -A \), substitute into second equation:\n"
      r"\( 2A - A = 5 \Rightarrow A = 5, B = -5 \).\n"
      r"Step 6: Integral becomes:\n"
      r"\( \int \frac{5}{x + 1} \, dx - \int \frac{5}{x + 2} \, dx \).\n"
      r"Step 7: Answer = \( 5 \ln|x + 1| - 5 \ln|x + 2| + C \).\n\n"
      r"(b) Step 1: Factor denominator \( x^2 + 3x + 2 = (x + 1)(x + 2) \).\n"
      r"Step 2: Decompose \( \frac{x + 3}{(x + 1)(x + 2)} = \frac{A}{x + 1} + \frac{B}{x + 2} \).\n"
      r"Step 3: Multiply both sides:\n"
      r"\( x + 3 = A(x + 2) + B(x + 1) \).\n"
      r"Step 4: Expand: \( x + 3 = A x + 2A + B x + B \).\n"
      r"Step 5: Group: \( x + 3 = (A + B) x + (2A + B) \).\n"
      r"Step 6: Coefficients: \( A + B = 1, 2A + B = 3 \).\n"
      r"Subtract first from second: \( (2A + B) - (A + B) = 3 - 1 \Rightarrow A = 2, B = -1 \).\n"
      r"Step 7: Integral becomes \( \int \frac{2}{x + 1} \, dx - \int \frac{1}{x + 2} \, dx \).\n"
      r"Step 8: Answer = \( 2 \ln|x + 1| - \ln|x + 2| + C \)."
    },
    {
      "question": r"Evaluate \( \int \frac{4x + 1}{x^2 + 3x + 2} \, dx \).",
      "answer": r"Hint: Factor denominator: \( x^2 + 3x + 2 = (x + 1)(x + 2) \), decompose into \( \frac{A}{x + 1} + \frac{B}{x + 2} \) and integrate each term."
    },
    {
      "question": r"Evaluate \( \int \frac{x^2 + 1}{(x + 1)(x^2 + 1)} \, dx \).",
      "answer": r"Hint: Decompose using \( \frac{A}{x + 1} + \frac{Bx + C}{x^2 + 1} \), integrate rational and arctangent components separately."
    },

    {
      "question": r"Improper Integrals\n(a) Determine if \( \int_1^{\infty} \frac{1}{x^2} \, dx \) converges, and if so, compute it.\n(b) Evaluate \( \int_0^{1} \frac{1}{\sqrt{x}} \, dx \).",
      "answer": r"(a) Step 1: Compute \( \int_1^{b} x^{-2} dx = \left[ -x^{-1} \right]_1^b = -\frac{1}{b} + 1 \).\n"
      r"Step 2: Limit as \( b \to \infty \), \( \frac{1}{b} \to 0 \), so answer = 1. Converges.\n\n"
      r"(b) Step 1: \( \int_0^{1} x^{-1/2} dx = [2x^{1/2}]_0^1 = 2 - 0 = 2 \).\n"
      r"Step 2: Integral converges, answer = 2."
    },
    {
      "question": r"Determine if \( \int_2^{\infty} \frac{1}{x^3} \, dx \) converges and compute it.",
      "answer": r"Hint: \( \int_2^b x^{-3} dx = \left[ -\frac{1}{2x^2} \right]_2^b \), then take limit as \( b \to \infty \)."
    },
    {
      "question": r"Evaluate \( \int_0^1 \frac{1}{x^{2/3}} \, dx \).",
      "answer": r"Hint: Rewrite as \( x^{-2/3} \), integrate as a power function, and check the behavior at \( x = 0 \). It converges since exponent > -1."
    }
  ],

  "Applications of Integration": [
    {
      "question": r"Area Between Curves\nFind the area enclosed between \( y = x^2 \) and \( y = 2x \).",
      "answer": r"Step 1: Find intersection points: \( x^2 = 2x \Rightarrow x(x - 2) = 0 \Rightarrow x = 0, 2 \).\n"
      r"Step 2: Top curve \( y = 2x \), bottom curve \( y = x^2 \).\n"
      r"Step 3: Area = \( \int_0^2 (2x - x^2) \, dx \).\n"
      r"Step 4: \( = \left[ x^2 - \frac{x^3}{3} \right]_0^2 = (4 - \frac{8}{3}) - 0 = \frac{12 - 8}{3} = \frac{4}{3} \).\n"
      r"Final Answer: \( \frac{4}{3} \)."
    },
    {
      "question": r"Area Between Curves\nFind the area enclosed between \( y = x^2 \) and \( y = 3x \).",
      "answer": r"Use the same method: find intersection points \( x^2 = 3x \Rightarrow x(x - 3) = 0 \), integrate \( \int_0^3 (3x - x^2) dx \)."
    },
    {
      "question": r"Area Between Curves\nFind the area between \( y = x^2 - 2x \) and \( y = 4 - x \).",
      "answer": r"Find points of intersection and use \( \int_a^b (\text{top} - \text{bottom}) dx \), but consider that the functions may switch order over the interval."
    },
    {
      "question": r"Volumes by Cross-Section\nA region between \( y = \sqrt{x} \), \( x = 4 \), and \( y = 0 \) is revolved perpendicular to the \( x \)-axis with square cross-sections.\nFind the volume.",
      "answer": r"Step 1: Cross-sectional area is square, side length = \( \sqrt{x} \).\n"
      r"Step 2: Area = \( (\sqrt{x})^2 = x \).\n"
      r"Step 3: Volume = \( \int_0^4 x \, dx = \frac{x^2}{2}\bigg|_0^4 = \frac{16}{2} = 8 \)."
    },
    {
      "question": r"Volumes by Cross-Section\nA region bounded by \( y = \sqrt{x+1} \), \( x = 3 \), and \( y = 0 \) is revolved with square cross-sections perpendicular to the \( x \)-axis.\nFind the volume.",
      "answer": r"Side length is \( \sqrt{x+1} \), area is \( x+1 \), so integrate from 0 to 3: \( \int_0^3 (x+1) dx \)."
    },
    {
      "question": r"Volumes by Cross-Section\nA region between \( y = \sqrt{x} \), \( x = 4 \), and \( y = 0 \) is revolved perpendicular to the y-axis using equilateral triangle cross-sections.\nFind the volume.",
      "answer": r"Equilateral triangle area is \( \frac{\sqrt{3}}{4} (\text{side})^2 \), so integrate \( \frac{\sqrt{3}}{4} x \) over the interval."
    },
    {
      "question": r"Volumes by Cylindrical Shells\nFind the volume generated when the region between \( y = x \) and \( y = x^2 \) from \( x = 0 \) to \( x = 1 \) is revolved about the \( y \)-axis.",
      "answer": r"Step 1: Shell method formula: \( V = 2\pi \int_a^b \text{radius} \times \text{height} \, dx \).\n"
      r"Step 2: Radius = \( x \), height = \( x - x^2 \).\n"
      r"Step 3: \( V = 2\pi \int_0^1 x (x - x^2) \, dx = 2\pi \int_0^1 (x^2 - x^3) \, dx \).\n"
      r"Step 4: \( = 2\pi \left( \frac{x^3}{3} - \frac{x^4}{4} \right)_0^1 = 2\pi \left( \frac{1}{3} - \frac{1}{4} \right) = 2\pi \cdot \frac{1}{12} = \frac{\pi}{6} \)."
    },
    {
      "question": r"Volumes by Cylindrical Shells\nFind the volume of the solid formed by rotating the region between \( y = x \) and \( y = x^2 \) from \( x = 0 \) to \( x = 2 \) about the \( y \)-axis.",
      "answer": r"Use shell method: radius = \( x \), height = \( x - x^2 \), but limits are now 0 to 2."
    },
    {
      "question": r"Volumes by Cylindrical Shells\nRotate the region bounded by \( y = x^2 \) and \( y = 4 \) around the \( y \)-axis using the shell method.",
      "answer": r"Height becomes \( 4 - x^2 \), radius is \( x \), and limits are from 0 to 2."
    },
    {
      "question": r"Average Value and MVT\nFind the average value of \( f(x) = x^2 + 1 \) on \( [0, 2] \) and verify the Mean Value Theorem holds.",
      "answer": r"Step 1: Average value = \( \frac{1}{2 - 0} \int_0^2 (x^2 + 1) \, dx \).\n"
      r"Step 2: Integral = \( \frac{1}{2} \left[ \frac{x^3}{3} + x \right]_0^2 = \frac{1}{2} \left( \frac{8}{3} + 2 \right) = \frac{1}{2} \cdot \frac{14}{3} = \frac{7}{3} \).\n"
      r"Step 3: MVT: \( f(c) = \frac{7}{3} \Rightarrow c^2 + 1 = \frac{7}{3} \Rightarrow c^2 = \frac{4}{3}, c = \frac{2}{\sqrt{3}} \)."
    },
    {
      "question": r"Average Value and MVT\nFind the average value of \( f(x) = x^2 + 2 \) on \( [1, 3] \) and verify the MVT for integrals.",
      "answer": r"Integrate \( x^2 + 2 \) over \( [1, 3] \), divide by 2, then solve \( c^2 + 2 = \text{avg value} \)."
    },
    {
      "question": r"Average Value and MVT\nFind the average value of \( f(x) = \sin(x) \) on \( [0, \pi] \) and verify the MVT.",
      "answer": r"Use symmetry of sine, and solve \( \sin(c) = \frac{2}{\pi} \) to find a \( c \in [0, \pi] \)."
    },
    {
      "question": r"Arc Length\nFind the length of the curve \( y = \frac{1}{3} x^{3/2} \), from \( x = 0 \) to \( x = 4 \).",
      "answer": r"Step 1: Arc length formula: \( L = \int_a^b \sqrt{1 + \left( \frac{dy}{dx} \right)^2 } \, dx \).\n"
      r"Step 2: \( \frac{dy}{dx} = \frac{1}{3} \cdot \frac{3}{2} x^{1/2} = \frac{1}{2} x^{1/2} \).\n"
      r"Step 3: \( \left( \frac{dy}{dx} \right)^2 = \frac{x}{4} \).\n"
      r"Step 4: \( L = \int_0^4 \sqrt{1 + \frac{x}{4}} \, dx = \int_0^4 \sqrt{\frac{x + 4}{4}} \, dx = \frac{1}{2} \int_0^4 \sqrt{x + 4} \, dx \).\n"
      r"Step 5: Let \( u = x + 4, du = dx \), limits change from \( u=4 \) to \( 8 \).\n"
      r"\( L = \frac{1}{2} \int_4^8 u^{1/2} \, du = \frac{1}{2} \cdot \frac{2}{3} (u)^{3/2}\big|_4^8 \).\n"
      r"Step 6: \( L = \frac{1}{3} \left( 8^{3/2} - 4^{3/2} \right) = \frac{1}{3} (22.627 - 8) = \frac{14.627}{3} \)."
    },
    {
      "question": r"Arc Length\nFind the length of \( y = \frac{2}{3} x^{3/2} \) from \( x = 0 \) to \( x = 1 \).",
      "answer": r"Differentiate, square the derivative, plug into arc length formula, and simplify the radical."
    },
    {
      "question": r"Arc Length\nFind the arc length of \( y = \ln(\cos x) \) from \( x = 0 \) to \( x = \frac{\pi}{4} \).",
      "answer": r"Compute \( \frac{dy}{dx} = -\tan x \), then use \( \sqrt{1 + \tan^2 x} = \sec x \), simplify under square root."
    }
  ],

  "Binomial Theorem": [
    {
      "question": r"(a) Simplify and evaluate \( \frac{(n+1)!}{n!} \) in terms of \( n \).\n(b) Given \( \frac{(k+3)!}{(k+1)!} = 20(k+2) \), simplify the expression and explain why this identity holds.",
      "answer": r"(a) Step 1: Expand numerator: \( (n+1)! = (n+1) \cdot n! \).\n"
      r"Step 2: Cancel \( n! \) terms: \( \frac{(n+1)!}{n!} = n + 1. \)\n"
      r"Final Answer: \( n + 1 \).\n\n"
      r"(b) Step 1: Expand numerator: \( (k+3)! = (k+3)(k+2)(k+1)! \).\n"
      r"Step 2: Cancel \( (k+1)! \): \( \frac{(k+3)!}{(k+1)!} = (k+3)(k+2) \).\n"
      r"Step 3: Rewrite: \( (k+3)(k+2) = k^2 + 5k + 6 \).\n"
      r"Step 4: Observe that \( 20(k+2) = 20k + 40 \), but by expanding directly we see it’s \( k^2 + 5k + 6 \), thus the given equation must involve a specific \( k \).\n"
      r"Step 5: Equate directly: \( (k+3)(k+2) = 20(k+2) \), we get \( k + 3 = 20 \Rightarrow k = 17 \).\n"
      r"Final Answer: Holds true when \( k = 17 \), by direct simplification, we are not playing games here folks (Haha) blame Leboneng for this."
    },
    {
      "question": r"(a) Simplify \( \frac{(m+2)!}{m!} \).\n(b) Given \( \frac{(r+4)!}{(r+2)!} = 30(r+3) \), verify and simplify the expression.",
      "answer": r"(a) Try expanding numerator: you'll get \( (m+2)(m+1) \) after canceling.\n(b) Expand the factorial in numerator and cancel \( (r+2)! \), then solve for \( r \) as in a regular equation."
    },
    {
      "question": r"(a) Simplify \( \frac{(x+4)!}{(x+2)!} \).\n(b) Given \( \frac{(t+5)!}{(t+2)!} = 60(t+3) \), prove or disprove the identity.",
      "answer": r"(a) Try writing all terms in the numerator until you can cancel the denominator.\n(b) Expand \( (t+5)! \) and cancel \( (t+2)! \), then factor and compare both sides — the identity will hold for a specific \( t \)."
    },
    {
      "question": r"(a) How many 1-1 functions are there from a set with 4 elements to a set with 6 elements?\n(b) In how many ways can 7 people be seated around a circular table if two specific people must not sit together?",
      "answer": r"(a) Step 1: Since it’s 1-1, count injective mappings.\n"
      r"Step 2: \( P(6,4) = \frac{6!}{(6-4)!} = 6 \times 5 \times 4 \times 3 = 360. \)\n\n"
      r"(b) Step 1: Total unrestricted = \( (7 - 1)! = 720. \)\n"
      r"Step 2: Count arrangements where the two people are together: consider them as a block: \( (6 - 1)! = 120, \) multiply by \( 2! \) (they can swap).\n"
      r"Step 3: Forbidden = \( 2 \times 120 = 240 \), valid = \( 720 - 240 = 480. \)\n"
      r"Final Answer: \( 480 \)."
    },
    {
      "question": r"(a) How many 1-1 functions exist from a 3-element set to a 5-element set?\n(b) In how many ways can 6 people sit at a round table if 2 must not be together?",
      "answer": r"(a) Use \( P(5,3) \).\n(b) Total arrangements minus those where the pair are together — treat them as a block and adjust total accordingly."
    },
    {
      "question": r"(a) Count the number of injective functions from a 5-element set to an 8-element set.\n(b) In how many ways can 8 people sit around a table if 3 specific people must not sit together?",
      "answer": r"(a) Use \( P(8,5) \), it’s a permutation of 5 from 8.\n(b) Subtract arrangements where the 3 are grouped — handle like a block of 3, and include permutations within the block."
    },
    {
      "question": r"(a) Compute the falling factorial \( (5)_3 \).\n(b) Simplify \( (x)_4 \) and expand it fully.",
      "answer": r"(a) Step 1: \( (5)_3 = 5 \cdot 4 \cdot 3 = 60. \)\n\n"
      r"(b) Step 1: \( (x)_4 = x(x-1)(x-2)(x-3) \).\n"
      r"Step 2: Expand step by step:\n"
      r"First pair: \( x(x-1) = x^2 - x \).\n"
      r"Second pair: \( (x-2)(x-3) = x^2 - 5x + 6 \).\n"
      r"Step 3: Multiply: \( (x^2 - x)(x^2 - 5x + 6) \).\n"
      r"Step 4: Expand:\n"
      r"\( = x^4 - 5x^3 + 6x^2 - x^3 + 5x^2 - 6x \)\n"
      r"\( = x^4 - 6x^3 + 11x^2 - 6x \).\n"
      r"Final Answer: \( x^4 - 6x^3 + 11x^2 - 6x. \)"
    },
    {
      "question": r"(a) Compute \( (6)_2 \).\n(b) Expand \( (x)_3 \) and simplify.",
      "answer": r"(a) Remember: it’s \( 6 \cdot 5 \).\n(b) Multiply \( x(x-1)(x-2) \) and expand carefully — go step by step."
    },
    {
      "question": r"(a) Compute \( (7)_4 \).\n(b) Expand \( (x+1)_4 \).",
      "answer": r"(a) Start with 7 and multiply four descending integers.\n(b) Replace each term: \( (x+1)(x)(x-1)(x-2) \), then expand systematically."
    },
    {
      "question": r"How many ways can a committee of 3 be selected from 8 people?",
      "answer": r"Step 1: This is a simple combination: \( \binom{8}{3} = \frac{8!}{3! \cdot 5!} \).\n"
      r"Step 2: \( = \frac{8 \times 7 \times 6}{6} = 56. \)\n"
      r"Final Answer: \( 56. \)"
    },
    {
      "question": r"How many committees of 2 can be chosen from 7 people?",
      "answer": r"Use the combination formula \( \binom{7}{2} \)."
    },
    {
      "question": r"In how many ways can 4 people be chosen from a group of 10?",
      "answer": r"Use \( \binom{10}{4} = \frac{10!}{4!6!} \) — simplify top 4 terms only."
    },
    {
      "question": r"(a) Find \( \binom{9}{3} \).\n(b) Using Pascal's Triangle, express \( \binom{9}{5} \) in terms of previous row's entries.\n(c) Prove that \( \binom{n}{k} = \binom{n-1}{k} + \binom{n-1}{k-1} \) holds for \( n = 7, k = 3 \).",
      "answer": r"(a) Step 1: \( \binom{9}{3} = \frac{9 \times 8 \times 7}{6} = 84. \)\n\n"
      r"(b) Step 1: Pascal’s rule: \( \binom{9}{5} = \binom{8}{4} + \binom{8}{5} \).\n"
      r"Step 2: Compute: \( \binom{8}{4} = 70, \binom{8}{5} = 56, \) sum = \( 126. \)\n\n"
      r"(c) LHS: \( \binom{7}{3} = 35 \).\n"
      r"RHS: \( \binom{6}{3} + \binom{6}{2} = 20 + 15 = 35. \)\n"
      r"LHS = RHS confirmed for \( n=7, k=3 \). Note: I could have given you n=a and k=b, would you be able to solve it? Again..blame him for this"
    },
    {
      "question": r"(a) Find \( \binom{8}{2} \).\n(b) Express \( \binom{8}{4} \) using Pascal’s triangle.\n(c) Verify Pascal's identity for \( n = 6, k = 2 \).",
      "answer": r"(a) Use top 2 values in factorials.\n(b) Recall \( \binom{8}{4} = \binom{7}{3} + \binom{7}{4} \).\n(c) Just plug into identity and confirm both sides are equal."
    },
    {
      "question": r"(a) Compute \( \binom{10}{4} \).\n(b) Express \( \binom{10}{6} \) using Pascal’s Triangle.\n(c) Prove the identity for \( n = 8, k = 4 \).",
      "answer": r"(a) Reduce factorial terms smartly.\n(b) Apply symmetry: \( \binom{n}{k} = \binom{n}{n-k} \), then use Pascal’s rule.\n(c) Confirm identity \( \binom{8}{4} = \binom{7}{4} + \binom{7}{3} \)."
    },
    {
      "question": r"Use the Binomial Theorem to expand \( (2x - 3)^4 \).",
      "answer": r"Step 1: Use \( (a + b)^n = \sum \binom{n}{k} a^{n-k} b^k \).\n"
      r"Step 2: Here \( a = 2x, b = -3, n = 4 \).\n"
      r"Step 3: Expand terms:\n"
      r"\( = \sum_{k=0}4 \binom{4}{k} (2x)^{4-k} (-3)^k \).\n"
      r"Step 4: Write all terms:\n"
      r"\( \binom{4}{0}(2x)^4 + \binom{4}{1}(2x)^3(-3) + \binom{4}{2}(2x)^2(-3)^2 + \dots \).\n"
      r"Step 5: Expand fully:\n"
      r"\( 16x^4 - 96x^3 + 216x^2 - 216x + 81. \)"
    },
    {
      "question": r"Use the Binomial Theorem to expand \( (x + 1)^5 \).",
      "answer": r"Just follow the binomial formula using \( a = x, b = 1, n = 5 \) and compute each term carefully."
    },
    {
      "question": r"Expand \( (3x - 2)^5 \) using the Binomial Theorem.",
      "answer": r"Use \( a = 3x, b = -2, n = 5 \), compute \( \binom{5}{k}(3x)^{5-k}(-2)^k \) for each \( k \)."
    },
    {
      "question": r"(a) Find the third-degree Maclaurin polynomial for \( \sin(x) \).\n(b) Find the second-degree Taylor polynomial of \( f(x) = e^x \) centered at \( a = 1 \).",
      "answer": r"(a) Step 1: \( f(x) = \sin(x), f'(x) = \cos(x), f''(x) = -\sin(x), f'''(x) = -\cos(x) \).\n"
      r"Step 2: Evaluate at 0: \( f(0)=0, f'(0)=1, f''(0)=0, f'''(0)=-1 \).\n"
      r"Step 3: Polynomial = \( x - \frac{x^3}{6} \).\n\n"
      r"(b) Step 1: \( f(x)=e^x, f'(x)=e^x, f''(x)=e^x \).\n"
      r"Step 2: Evaluate at \( x=1 \): \( f(1)=e, f'(1)=e, f''(1)=e \).\n"
      r"Step 3: \( P_2(x) = e + e(x-1) + \frac{e}{2}(x-1)^2 \).\n"
      r"Step 4: Factor out \( e \): \( e\left[ 1 + (x-1) + \frac{(x-1)^2}{2} \right]. \)"
    },
    {
      "question": r"(a) Find the third-degree Maclaurin polynomial for \( \cos(x) \).\n(b) Find the second-degree Taylor polynomial for \( \ln(x) \) centered at \( a = 1 \).",
      "answer": r"(a) You’ll only use even-powered terms.\n(b) Use derivatives of \( \ln(x) \) and evaluate at 1."
    },
    {
      "question": r"(a) Find the fourth-degree Maclaurin polynomial for \( \tan^{-1}(x) \).\n(b) Find the third-degree Taylor polynomial for \( \sqrt{x} \) centered at \( x = 4 \).",
      "answer": r"(a) Only odd powers appear in the expansion.\n(b) You need up to the third derivative of \( f(x) = x^{1/2} \) and evaluate each at 4."
    },
    {
      "question": r"Consider the following:\n- (i) Find \( \binom{10}{3} \).\n- (ii) Expand \( (1 + 2x)^3 \) using the Binomial Theorem.\nFind the product of your two answers.",
      "answer": r"Step 1: \( \binom{10}{3} = 120. \)\n"
      r"Step 2: Expand \( (1 + 2x)^3 = \binom{3}{0}1^3 + \binom{3}{1}1^2(2x) + \binom{3}{2}1(2x)^2 + \binom{3}{3}(2x)^3 \).\n"
      r"Step 3: \( = 1 + 6x + 12x^2 + 8x^3. \)\n"
      r"Step 4: Product = \( 120 \times (1 + 6x + 12x^2 + 8x^3) \).\n"
      r"Final expression = \( 120 + 720x + 1440x^2 + 960x^3. \)"
    },
    {
      "question": r"(i) Find \( \binom{9}{2} \).\n(ii) Expand \( (1 + 3x)^2 \). Multiply both results.",
      "answer": r"Calculate \( \binom{9}{2} = 36 \), expand the binomial, then multiply the result with each term."
    },
    {
      "question": r"(i) Compute \( \binom{12}{4} \).\n(ii) Expand \( (2 - x)^4 \). Multiply the two expressions.",
      "answer": r"Do binomial expansion carefully for \( (2 - x)^4 \), then multiply term by term with \( \binom{12}{4} \)."
    }
  ],

  "Complex Numbers": [
    {
      "question": r"(a) Simplify \( (2 + 3i) + (4 - 5i) \).\n(b) Simplify and expand \( (1 + 2i)(3 - i) \), express in \( a + bi \) form.",
      "answer": r"(a) Step 1: Add real and imaginary parts separately.\n\( 2 + 4 = 6, 3i - 5i = -2i, \) final answer = \( 6 - 2i \).\n\n"
      r"(b) Step 1: Expand: \( 1 \times 3 + 1 \times (-i) + 2i \times 3 + 2i \times (-i) \).\n"
      r"Step 2: \( 3 - i + 6i - 2i^2 \).\n\( i^2 = -1, \) so \( -2(-1) = 2 \).\n"
      r"Step 3: Combine: \( 3 + 2 + (-i + 6i) = 5 + 5i. \)"
    },
    {
      "question": r"(a) Simplify \( (5 + i) + (3 - 4i) \).\n(b) Simplify and expand \( (2 + i)(4 - 2i) \), express in \( a + bi \) form.",
      "answer": r"(a) Add real parts and imaginary parts separately.\n(b) Multiply out and use \( i^2 = -1 \) to simplify fully."
    },
    {
      "question": r"(a) Simplify \( (1 - 3i) + (6 + 2i) \).\n(b) Simplify and expand \( (2 + 3i)(1 - 4i) \), express in \( a + bi \) form.",
      "answer": r"(a) Watch signs when combining real and imaginary parts.\n(b) Use distributive expansion and combine like terms carefully."
    },

    {
      "question": r"(a) Write \( \frac{3}{1 + i} \) in \( a + bi \) form.\n(b) Simplify \( \frac{4 + i}{2 - 3i} \), giving exact real and imaginary parts.",
      "answer": r"(a) Step 1: Multiply numerator and denominator by conjugate \( 1 - i \):\n"
      r"\( \frac{3(1 - i)}{1^2 - i^2} = \frac{3 - 3i}{1 + 1} = \frac{3 - 3i}{2} = \frac{3}{2} - \frac{3}{2}i. \)\n\n"
      r"(b) Step 1: Multiply numerator and denominator by conjugate \( 2 + 3i \):\n"
      r"\( \frac{(4+i)(2+3i)}{2^2 + 9} = \frac{8 + 12i + 2i + 3i^2}{13} \).\n"
      r"\( i^2 = -1, 8 + 14i - 3 = 5 + 14i, \) answer = \( \frac{5}{13} + \frac{14}{13}i. \)"
    },
    {
      "question": r"(a) Write \( \frac{2}{3 - i} \) in \( a + bi \) form.\n(b) Simplify \( \frac{1 + 2i}{3 + i} \), giving exact real and imaginary parts.",
      "answer": r"Multiply numerator and denominator by the complex conjugate of the denominator."
    },
    {
      "question": r"(a) Write \( \frac{5 - i}{2 + i} \) in \( a + bi \) form.\n(b) Simplify \( \frac{3i}{1 - 2i} \), giving exact real and imaginary parts.",
      "answer": r"Use the conjugate of the denominator to eliminate \( i \) from the bottom and simplify fully."
    },

    {
      "question": r"(a) Find \( |3 - 4i| \).\n(b) Plot \( 2 - 2i \) on the Argand Diagram and determine the distance from the origin.",
      "answer": r"(a) Step 1: Modulus = \( \sqrt{3^2 + (-4)^2} = \sqrt{9 + 16} = 5 \).\n\n"
      r"(b) Step 1: Modulus = \( \sqrt{2^2 + (-2)^2} = \sqrt{4 + 4} = 2\sqrt{2} \).\n"
      r"Step 2: Point lies in fourth quadrant, distance from origin = \( 2\sqrt{2} \)."
    },
    {
      "question": r"(a) Find \( |1 + 2i| \).\n(b) What is the distance of \( -3 + i \) from the origin in the Argand Diagram?",
      "answer": r"Use the modulus formula \( |a + bi| = \sqrt{a^2 + b^2} \)."
    },
    {
      "question": r"(a) Find \( |5 + 12i| \).\n(b) Find the distance of \( -6 - 8i \) from the origin.",
      "answer": r"Use Pythagorean identity and simplify square roots where needed."
    },

    {
      "question": r"(a) Express \( 1 + i \) in modulus-argument form.\n(b) Express \( -1 - \sqrt{3}i \) in modulus-argument form with argument between \( -\pi \) and \( \pi \).",
      "answer": r"(a) Step 1: Modulus = \( \sqrt{1^2 + 1^2} = \sqrt{2} \), argument = \( \tan^{-1}(1) = \frac{\pi}{4} \).\n"
      r"Answer: \( \sqrt{2}\left( \cos\frac{\pi}{4} + i\sin\frac{\pi}{4} \right) \).\n\n"
      r"(b) Step 1: Modulus = \( \sqrt{1 + 3} = 2 \), argument = \( \tan^{-1}(\frac{\sqrt{3}}{1}) = \frac{\pi}{3} \).\n"
      r"Since both real and imaginary parts negative, argument = \( -\pi + \frac{\pi}{3} = -\frac{2\pi}{3} \).\n"
      r"Answer: \( 2\left( \cos(-\frac{2\pi}{3}) + i\sin(-\frac{2\pi}{3}) \right) \)."
    },
    {
      "question": r"(a) Express \( -1 + i \) in modulus-argument form.\n(b) Express \( -2 - 2i \) in modulus-argument form.",
      "answer": r"Use modulus formula, then determine the correct quadrant for argument using arctangent and signs."
    },
    {
      "question": r"(a) Express \( 3 + 3i \) in modulus-argument form.\n(b) Express \( -5 + 5i \) in modulus-argument form with argument in \( (-\pi, \pi) \).",
      "answer": r"Factor out common terms and express using polar form; watch for correct argument range."
    },

    {
      "question": r"(a) Using De Moivre's Theorem, compute \( (1 + i)^4 \).\n(b) Simplify \( \left( \cos\frac{\pi}{5} + i\sin\frac{\pi}{5} \right)^5 \) using De Moivre's Theorem.",
      "answer": r"(a) Step 1: Modulus = \( \sqrt{2}, \theta = \frac{\pi}{4} \).\n"
      r"Step 2: \( (1 + i)^4 = 2^2 \left( \cos\pi + i\sin\pi \right) = 4(-1 + 0) = -4 \).\n\n"
      r"(b) Step 1: By De Moivre’s, power multiplies argument:\n"
      r"\( \cos(\pi) + i\sin(\pi) = -1. \)"
    },
    {
      "question": r"(a) Using De Moivre’s, compute \( (1 - i)^6 \).\n(b) Simplify \( \left( \cos\frac{\pi}{6} + i\sin\frac{\pi}{6} \right)^3 \).",
      "answer": r"Convert to polar form and apply the theorem: raise modulus to power, multiply angle."
    },
    {
      "question": r"(a) Compute \( (2\text{cis}\frac{\pi}{3})^3 \) using De Moivre.\n(b) Simplify \( \left( \cos\frac{2\pi}{3} + i\sin\frac{2\pi}{3} \right)^4 \).",
      "answer": r"Use cis notation where applicable, multiply angle by exponent, and raise modulus."
    },

    {
      "question": r"(a) Express \( e^{i\pi} \) in simplest form.\n(b) Simplify \( e^{i\pi} + e^{-i\pi} \).",
      "answer": r"(a) \( e^{i\pi} = \cos\pi + i\sin\pi = -1. \)\n\n"
      r"(b) \( e^{i\pi} + e^{-i\pi} = -1 + (-1) = -2. \)"
    },
    {
      "question": r"(a) Evaluate \( e^{i\frac{\pi}{2}} \).\n(b) Simplify \( e^{i\pi} - e^{-i\pi} \).",
      "answer": r"Use Euler's formula and calculate using exact trigonometric values."
    },
    {
      "question": r"(a) Simplify \( e^{i\pi} + 1 \).\n(b) Evaluate \( \text{Re}(e^{i\pi/3}) \).",
      "answer": r"Euler identity helps show surprising results like zero or cosine terms."
    },

    {
      "question": r"(a) Express \( \cos x \) in terms of complex exponentials.\n(b) Express \( \sin 3x \) in terms of \( e^{ix} \) using Euler's formula.",
      "answer": r"(a) \( \cos x = \frac{e^{ix} + e^{-ix}}{2} \).\n\n"
      r"(b) \( \sin 3x = \frac{e^{i3x} - e^{-i3x}}{2i} \)."
    },
    {
      "question": r"(a) Write \( \cos 2x \) using complex exponentials.\n(b) Express \( \sin x \) in terms of \( e^{ix} \).",
      "answer": r"Apply Euler’s formulas for cosine and sine with double/triple angles."
    },
    {
      "question": r"(a) Write \( \cos 5x \) using \( e^{ix} \).\n(b) Express \( \sin 2x \) in exponential form.",
      "answer": r"Use general forms and adjust the exponent for the given frequency."
    },

    {
      "question": r"(a) Find all cube roots of \( 8 \).\n(b) Find all fifth roots of \( -32 \).",
      "answer": r"(a) Step 1: \( 8 = 8(\cos 0 + i \sin 0) \).\n"
      r"Cube roots modulus = \( 2, \theta_k = \frac{2k\pi}{3}, k = 0, 1, 2. \)\n"
      r"Answers: \( 2, 2\left( \cos\frac{2\pi}{3} + i\sin\frac{2\pi}{3} \right), 2\left( \cos\frac{4\pi}{3} + i\sin\frac{4\pi}{3} \right) \).\n\n"
      r"(b) \( -32 = 32 \left( \cos\pi + i\sin\pi \right) \), modulus = \( 2, \theta_k = \frac{\pi + 2k\pi}{5} \).\n"
      r"Answers involve \( 2\left( \cos\theta_k + i\sin\theta_k \right) \) for \( k = 0,1,2,3,4 \)."
    },
    {
      "question": r"(a) Find all fourth roots of \( 16 \).\n(b) Find cube roots of \( -8 \).",
      "answer": r"Use polar form and divide angle and root the modulus."
    },
    {
      "question": r"(a) Find all cube roots of \( -27 \).\n(b) Find fifth roots of \( 243 \).",
      "answer": r"Convert to exponential form with argument, divide angle by root index."
    },

    {
      "question": r"(a) Show that if \( z^2 + 1 = 0 \), then \( z = \pm i \).\n(b) Find all roots of \( z^4 + 16 = 0 \).",
      "answer": r"(a) \( z^2 = -1 \Rightarrow z = \pm i. \)\n\n"
      r"(b) \( z^4 = -16 = 16e^{i\pi}, |z| = 2, \theta_k = \frac{\pi + 2k\pi}{4} \).\n"
      r"Solutions: \( 2\left( \cos\frac{\pi}{4} + i\sin\frac{\pi}{4} \right), 2\left( \cos\frac{3\pi}{4} + i\sin\frac{3\pi}{4} \right), \) etc., for \( k = 0,1,2,3 \)."
    },
    {
      "question": r"(a) Show that \( z^2 = -9 \) implies \( z = \pm 3i \).\n(b) Find all roots of \( z^3 + 27 = 0 \).",
      "answer": r"Use polar form and cube root of a negative number using De Moivre’s Theorem."
    },
    {
      "question": r"(a) Solve \( z^2 = -25 \).\n(b) Find all roots of \( z^6 + 64 = 0 \).",
      "answer": r"Convert RHS to exponential form and find \( n \)-th roots by rotating angle."
    },

    {
      "question": r"(a) Show that \( z = 2 + i \) is a root of \( z^2 - 4z + 5 = 0 \).\n(b) Find all roots of \( z^3 - 1 = 0 \) in modulus-argument form.",
      "answer": r"(a) \( (2 + i)^2 - 4(2 + i) + 5 = (4 + 4i + i^2) - 8 - 4i + 5 = 0. \)\n"
      r"(b) \( z^3 = 1 = e^{i2k\pi}, |z| = 1, \theta_k = \frac{2k\pi}{3}, k = 0,1,2. \)"
    },
    {
      "question": r"(a) Verify that \( z = 1 - 2i \) solves \( z^2 + 4z + 5 = 0 \).\n(b) Find roots of \( z^4 = 1 \) in modulus-argument form.",
      "answer": r"Plug in the complex number and simplify to zero; for (b), use \( |z| = 1 \), angle = \( \frac{2k\pi}{n} \)."
    },
    {
      "question": r"(a) Show that \( z = -1 + i \) satisfies \( z^2 + 2z + 2 = 0 \).\n(b) Find all roots of \( z^6 = 1 \) in polar form.",
      "answer": r"Roots of unity lie on unit circle with equally spaced angles."
    }
  ],
  "Differential Equations": [
    {
      "question": r"Classify the differential equation \( y'' + y = \cos x \) as linear or nonlinear, and state its order.",
      "answer": r"Step 1: Highest derivative is \( y'' \), so it is a second-order equation.\nStep 2: Since \( y \) and its derivatives appear linearly (no powers, products), it is linear.\nAnswer: Second-order linear differential equation."
    },
    {
      "question": r"Classify the differential equation \( y'' - 5y' + 3y = \sin x \) as linear or nonlinear, and state its order.",
      "answer": r"The order is determined by the highest derivative, and linearity depends on the absence of nonlinear terms in \( y \), \( y' \), and \( y'' \)."
    },
    {
      "question": r"Classify the equation \( y''' + y^2 = \ln x \) and state its order.",
      "answer": r"The presence of \( y^2 \) makes the equation nonlinear, and the highest derivative \( y''' \) indicates it is third order."
    },
    {
      "question": r"Sketch a rough directional field for \( \frac{dy}{dx} = x - y \) at points \( (0,0), (1,1), (2,0), (0,2) \).",
      "answer": r"Step 1: At \( (0,0): \frac{dy}{dx} = 0 - 0 = 0 \), slope = 0 (horizontal line).\nAt \( (1,1): 1-1=0 \), slope = 0.\nAt \( (2,0): 2-0=2 \), slope = 2 (steep positive).\nAt \( (0,2): 0-2=-2 \), slope = -2 (steep negative).\nSketch should show slope lines at these points."
    },
    {
      "question": r"Sketch the direction field for \( \frac{dy}{dx} = 2x - y \) at \( (0,0), (1,0), (1,2), (2,1) \).",
      "answer": r"Compute slopes at each point using the formula, then sketch short lines with matching direction and steepness."
    },
    {
      "question": r"Sketch the directional field for \( \frac{dy}{dx} = x^2 - y \) at \( (1,1), (0,1), (2,2), (1,0) \).",
      "answer": r"Substitute each point into the slope formula and observe increasing nonlinearity due to the quadratic term in \( x \)."
    },
    {
      "question": r"Solve \( \frac{dy}{dx} = xy \) using separation of variables.",
      "answer": r"Step 1: Rearrange: \( \frac{1}{y}dy = xdx \).\nStep 2: Integrate both sides:\n\( \ln |y| = \frac{x^2}{2} + C \).\nStep 3: Exponentiate: \( y = Ce^{x^2/2} \)."
    },
    {
      "question": r"Solve \( \frac{dy}{dx} = 2xy \) using separation of variables.",
      "answer": r"After separating, integrate both sides and apply exponent rules to get the solution in the form \( y = Ce^{x^2} \)."
    },
    {
      "question": r"Solve \( \frac{dy}{dx} = x^2y \), \( y(0)=2 \), using separation of variables.",
      "answer": r"Separate, integrate both sides, then use initial condition to solve for the constant \( C \)."
    },
    {
      "question": r"The rate of change of a population \( P \) is proportional to \( P \). Formulate the differential equation and solve it.",
      "answer": r"Step 1: \( \frac{dP}{dt} = kP \).\nStep 2: \( \frac{1}{P} dP = k dt \).\nStep 3: Integrate: \( \ln P = kt + C \), \( P = Ce^{kt} \)."
    },
    {
      "question": r"The rate of change of bacteria population \( N \) is proportional to \( N \). Formulate and solve the equation.",
      "answer": r"The model is \( \frac{dN}{dt} = kN \), and the solution will follow exponential growth."
    },
    {
      "question": r"The rate of radioactive decay of substance \( M \) is proportional to \( M \). Write and solve the equation if \( M(0)=M_0 \).",
      "answer": r"Model is \( \frac{dM}{dt} = -kM \); separate and integrate to find \( M(t) = M_0 e^{-kt} \)."
    },
    {
      "question": r"Solve \( \frac{dy}{dx} + y = e^{-x} \), \( y(0) = 1 \).",
      "answer": r"Step 1: Linear form, integrating factor \( \mu(x) = e^{\int 1 dx} = e^x \).\nStep 2: Multiply both sides: \( e^x \frac{dy}{dx} + e^x y = 1 \).\nStep 3: LHS is derivative of \( e^x y \), so \( e^x y = x + C \).\nStep 4: \( y = e^{-x}(x + C) \), use \( y(0)=1 \): \( 1 = C \Rightarrow y = e^{-x}(x+1). \)"
    },
    {
      "question": r"Solve \( \frac{dy}{dx} + 2y = 1 \), \( y(0) = 0 \).",
      "answer": r"Use integrating factor \( e^{2x} \) to simplify and solve for \( y \)."
    },
    {
      "question": r"Solve \( \frac{dy}{dx} + y = \sin x \), \( y(0) = 0 \).",
      "answer": r"Apply integrating factor method; you'll get integrals involving sine and exponentials."
    },
    {
      "question": r"Find the general solution of \( y'' - 3y' + 2y = 0 \).",
      "answer": r"Step 1: Characteristic equation: \( r^2 - 3r + 2 = 0 \Rightarrow (r-1)(r-2)=0, r=1,2 \).\nStep 2: Solution: \( y = C_1 e^{x} + C_2 e^{2x} \)."
    },
    {
      "question": r"Find the general solution of \( y'' - 5y' + 6y = 0 \).",
      "answer": r"Use the characteristic equation to factor and find real, distinct roots."
    },
    {
      "question": r"Find the general solution of \( y'' - 2y' + y = 0 \).",
      "answer": r"The characteristic equation has a repeated root; general solution will include \( x \cdot e^{rx} \) term."
    },
    {
      "question": r"Solve \( \frac{dy}{dx} = \frac{y^2}{1 + x^2} \), \( y(0) = 1 \).",
      "answer": r"Step 1: Separate: \( \frac{1}{y^2} dy = \frac{1}{1+x^2} dx \).\nStep 2: Integrate: \( -y^{-1} = \tan^{-1} x + C \).\nStep 3: \( y = -\frac{1}{\tan^{-1} x + C} \).\nStep 4: \( x=0, y=1 \Rightarrow -1 = C \Rightarrow y = -\frac{1}{\tan^{-1} x - 1}. \)"
    },
    {
      "question": r"Solve \( \frac{dy}{dx} = \frac{y^2}{4 + x^2} \), \( y(0) = 2 \).",
      "answer": r"Separate variables and integrate both sides carefully using inverse trig."
    },
    {
      "question": r"Solve \( \frac{dy}{dx} = \frac{y^2 + 1}{1 + x^2} \), \( y(0) = 0 \).",
      "answer": r"Requires substitution and understanding of arctangent integrals; watch for implicit solutions."
    },
    {
      "question": r"Solve \( y'' + 4y = \sin(2x) \), general solution.",
      "answer": r"Step 1: Homogeneous solution: \( y_h = C_1 \cos 2x + C_2 \sin 2x \).\nStep 2: Particular solution guess: \( y_p = x(A\cos 2x + B\sin 2x) \) since RHS matches complementary solution.\nStep 3: Substitute, solve for \( A, B \), combine: \( y = y_h + y_p \).\nStep 4: Final solution involves calculating coefficients based on the method of undetermined coefficients."
    },
    {
      "question": r"Find the general solution of \( y'' + 9y = \cos(3x) \).",
      "answer": r"Guess a particular solution using method of undetermined coefficients and combine with homogeneous solution."
    },
    {
      "question": r"Find the general solution of \( y'' + 9y = \cos(3x) + x \).",
      "answer": r"Superposition applies: find particular solutions for both RHS terms and add them to the homogeneous solution."
    }
  ],

  "Vectors": [
    {
      "question": r"Give the distance between the points \( A(1, 2, -1) \) and \( B(4, -2, 3) \) in three-dimensional space.",
      "answer": r"Step 1: Use the distance formula: \( d = \sqrt{(x_2 - x_1)^2 + (y_2 - y_1)^2 + (z_2 - z_1)^2} \).\n"
      r"Step 2: \( d = \sqrt{(4-1)^2 + (-2-2)^2 + (3-(-1))^2} = \sqrt{9 + 16 + 16} = \sqrt{41} \)."
    },
    {
      "question": r"Give the distance between the points \( A(0, -1, 2) \) and \( B(3, 2, -2) \) in three-dimensional space.",
      "answer": r"Apply the 3D distance formula and compute each component difference before squaring."
    },
    {
      "question": r"Find the distance between \( A(-3, 5, 7) \) and \( B(2, -4, 1) \) in space.",
      "answer": r"The key is squaring each component difference and simplifying under the square root."
    },

    {
      "question": r"Find the magnitude of vector \( \mathbf{v} = 3\mathbf{i} - 4\mathbf{j} + 12\mathbf{k} \).",
      "answer": r"Step 1: \( |\mathbf{v}| = \sqrt{3^2 + (-4)^2 + 12^2} = \sqrt{9 + 16 + 144} = \sqrt{169} = 13. \)"
    },
    {
      "question": r"Find the magnitude of vector \( \mathbf{v} = -6\mathbf{i} + 2\mathbf{j} + 9\mathbf{k} \).",
      "answer": r"Square each component and sum them before taking the square root."
    },
    {
      "question": r"Find the length of \( \mathbf{v} = 7\mathbf{i} - 24\mathbf{j} + 18\mathbf{k} \).",
      "answer": r"Recognize that large values may still yield perfect squares; simplify carefully."
    },

    {
      "question": r"Given \( \mathbf{u} = (1, 2, 3) \) and \( \mathbf{v} = (4, 0, -1) \), compute \( \mathbf{u} \cdot \mathbf{v} \).",
      "answer": r"Step 1: \( \mathbf{u} \cdot \mathbf{v} = 1(4) + 2(0) + 3(-1) = 4 + 0 - 3 = 1. \)"
    },
    {
      "question": r"Given \( \mathbf{u} = (2, -1, 5) \) and \( \mathbf{v} = (-3, 4, 0) \), compute \( \mathbf{u} \cdot \mathbf{v} \).",
      "answer": r"Multiply corresponding components and add the results together."
    },
    {
      "question": r"Compute the dot product of \( \mathbf{u} = (6, -2, 7) \) and \( \mathbf{v} = (-1, 5, -3) \).",
      "answer": r"Carefully manage signs during multiplication of each component pair."
    },

    {
      "question": r"Find the cross product \( \mathbf{u} \times \mathbf{v} \), where \( \mathbf{u} = (1, 0, -1), \mathbf{v} = (2, -1, 3) \).",
      "answer": r"Step 1: Use determinant formula.\n"
      r"\( \mathbf{u} \times \mathbf{v} = \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ 1 & 0 & -1 \\ 2 & -1 & 3 \end{vmatrix} \)\n"
      r"= \( \mathbf{i}(0 - 1) - \mathbf{j}(3 + 2) + \mathbf{k}(-1 - 0) \)\n"
      r"= \( -\mathbf{i} - 5\mathbf{j} - \mathbf{k} \)."
    },
    {
      "question": r"Find \( \mathbf{u} \times \mathbf{v} \) where \( \mathbf{u} = (0, 2, -3) \), \( \mathbf{v} = (1, -1, 4) \).",
      "answer": r"Use the 3×3 determinant approach and evaluate each cofactor carefully."
    },
    {
      "question": r"Calculate \( \mathbf{u} \times \mathbf{v} \) where \( \mathbf{u} = (-2, 5, 1) \), \( \mathbf{v} = (3, -4, 2) \).",
      "answer": r"Keep track of signs when expanding the determinant row by row."
    },

    {
      "question": r"Find the equation of the plane passing through point \( (2, -1, 3) \) and normal to vector \( \mathbf{n} = (4, -2, 5) \).",
      "answer": r"Step 1: Plane equation: \( 4(x - 2) - 2(y + 1) + 5(z - 3) = 0 \).\n"
      r"Step 2: Expand: \( 4x - 8 - 2y - 2 + 5z - 15 = 0 \Rightarrow 4x - 2y + 5z - 25 = 0. \)"
    },
    {
      "question": r"Find the plane through \( (1, 0, -2) \) with normal vector \( (3, 1, -4) \).",
      "answer": r"Substitute into \( a(x - x_0) + b(y - y_0) + c(z - z_0) = 0 \) and simplify."
    },
    {
      "question": r"Find the plane that passes through \( (-1, 4, 2) \) and is perpendicular to \( \mathbf{n} = (5, -3, 6) \).",
      "answer": r"Carefully expand all terms to get the plane in standard form."
    },

    {
      "question": r"A line passes through \( (1, 2, 3) \) in direction \( (2, -1, 4) \). Determine whether point \( (5, 0, 11) \) lies on the line.",
      "answer": r"Step 1: Parametric equations: \( x=1+2t, y=2-t, z=3+4t \).\n"
      r"Step 2: For \( x=5 \), \( 1+2t=5 \Rightarrow t=2 \).\n"
      r"Step 3: \( y=2-2=0, z=3+8=11 \) satisfied.\n"
      r"Answer: Point lies on the line at \( t=2 \)."
    },
    {
      "question": r"Check whether the point \( (7, -1, 9) \) lies on the line \( \mathbf{r}(t) = (3, 1, 1) + t(4, -2, 4) \).",
      "answer": r"Substitute x, y, z into the parametric equations and solve for a consistent \( t \)."
    },
    {
      "question": r"Determine if \( (8, -3, 10) \) lies on line through \( (2, 1, 2) \) in direction \( (3, -2, 4) \).",
      "answer": r"All components must give the same value of \( t \); if not, the point is not on the line."
    },

    {
      "question": r"Find the shortest distance between the line \( \mathbf{r} = (1, 2, 3) + t(2, -1, 4) \) and the point \( (3, -1, 1) \).",
      "answer": r"Step 1: Direction vector \( \mathbf{d} = (2, -1, 4), \mathbf{p_0} = (1, 2, 3), \mathbf{p} = (3, -1, 1) \).\n"
      r"Step 2: Vector \( \mathbf{p - p_0} = (2, -3, -2) \).\n"
      r"Step 3: Distance = \( \frac{| (\mathbf{p - p_0}) \times \mathbf{d} |}{|\mathbf{d}|} \).\n"
      r"Step 4: Compute cross product and magnitude to get exact value.\n"
      r"Final Answer involves evaluating the determinant and simplifying."
    },
    {
      "question": r"Find the shortest distance from point \( (2, 0, 5) \) to the line \( \mathbf{r}(t) = (0, 1, 2) + t(3, 2, -1) \).",
      "answer": r"Use the vector from point to line and take the cross product with the direction vector."
    },
    {
      "question": r"What is the minimum distance between \( (6, -2, 3) \) and the line \( \mathbf{r}(t) = (1, 1, 1) + t(1, 0, -2) \)?",
      "answer": r"Use the formula involving cross product of the direction vector and vector to the point."
    }
  ],

  "Matrices": [
    {
      "question": r"Solve the system using Gaussian elimination:\n\( \begin{cases} x + 2y = 5 \\ 3x - y = 4 \end{cases} \)",
      "answer": r"Step 1: Write augmented matrix: \( \begin{bmatrix} 1 & 2 & | & 5 \\ 3 & -1 & | & 4 \end{bmatrix} \).\nStep 2: Eliminate using row operations: \( R_2 - 3R_1 \).\nStep 3: Back substitute to solve for \( x, y \)."
    },
    {
      "question": r"Solve the system using Gaussian elimination:\n\( \begin{cases} x + 3y = 7 \\ 2x - y = 1 \end{cases} \)",
      "answer": r"Use row operations to eliminate \( x \) and solve for \( y \) first, then back substitute to find \( x \)."
    },
    {
      "question": r"Solve the system using Gaussian elimination:\n\( \begin{cases} 2x - y + z = 3 \\ x + 2y - z = 4 \\ 3x + y + 2z = 5 \end{cases} \)",
      "answer": r"Start with row operations to eliminate variables below the pivot positions in the first column."
    },

    {
      "question": r"Given \( A = \begin{bmatrix} 2 & 1 \\ 0 & 3 \end{bmatrix} \), compute \( A^2 \).",
      "answer": r"Step 1: Multiply \( A \times A = \begin{bmatrix} 2 & 1 \\ 0 & 3 \end{bmatrix} \times \begin{bmatrix} 2 & 1 \\ 0 & 3 \end{bmatrix} \).\nStep 2: Compute entries to get \( A^2 = \begin{bmatrix} 4 & 5 \\ 0 & 9 \end{bmatrix} \)."
    },
    {
      "question": r"Given \( A = \begin{bmatrix} 3 & 0 \\ 1 & 2 \end{bmatrix} \), compute \( A^2 \).",
      "answer": r"Multiply row by column to get each entry in \( A^2 \), no shortcuts."
    },
    {
      "question": r"Given \( A = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \), compute \( A^3 \).",
      "answer": r"First find \( A^2 \), then use that to multiply by \( A \) again."
    },

    {
      "question": r"Determine if \( A = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \) is invertible and, if so, find \( A^{-1} \).",
      "answer": r"Step 1: Compute determinant: \( 1(4) - 2(3) = 4 - 6 = -2 \neq 0 \), so invertible.\nStep 2: Use formula \( A^{-1} = \frac{1}{\det A} \begin{bmatrix} d & -b \\ -c & a \end{bmatrix} \)."
    },
    {
      "question": r"Determine if \( A = \begin{bmatrix} 2 & 3 \\ 1 & 1 \end{bmatrix} \) is invertible.",
      "answer": r"Check if determinant is non-zero before attempting to compute the inverse."
    },
    {
      "question": r"Find the inverse of \( A = \begin{bmatrix} a & b \\ c & d \end{bmatrix} \) in terms of \( a,b,c,d \) assuming \( ad - bc \neq 0 \).",
      "answer": r"Use the general inverse formula for a \( 2 \times 2 \) matrix."
    },

    {
      "question": r"Given \( A = \begin{bmatrix} 0 & 1 \\ -1 & 0 \end{bmatrix} \), compute \( A^3 \).",
      "answer": r"Step 1: Find \( A^2 = A \times A = \begin{bmatrix} -1 & 0 \\ 0 & -1 \end{bmatrix} = -I \).\nStep 2: \( A^3 = A^2 \times A = (-I)A = -A. \)"
    },
    {
      "question": r"Given \( A = \begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix} \), compute \( A^4 \).",
      "answer": r"Recognize patterns in matrix powers of rotation matrices."
    },
    {
      "question": r"Let \( A = \begin{bmatrix} 0 & 1 \\ -1 & 0 \end{bmatrix} \), compute \( A^6 \).",
      "answer": r"Use cyclic properties of powers of this matrix."
    },

    {
      "question": r"Compute the determinant of the matrix \( \begin{bmatrix} 1 & 0 & 2 \\ -1 & 3 & 1 \\ 2 & -1 & 0 \end{bmatrix} \).",
      "answer": r"Step 1: Choose a row or column to expand along; the first row is convenient.\nStep 2: Expand along the first row:\n\( \det = 1 \times \begin{vmatrix} 3 & 1 \\ -1 & 0 \end{vmatrix} - 0 \times \begin{vmatrix} -1 & 1 \\ 2 & 0 \end{vmatrix} + 2 \times \begin{vmatrix} -1 & 3 \\ 2 & -1 \end{vmatrix} \).\nStep 3: Compute the 2x2 determinants:\n\( \begin{vmatrix} 3 & 1 \\ -1 & 0 \end{vmatrix} = 1 \),\n\( \begin{vmatrix} -1 & 3 \\ 2 & -1 \end{vmatrix} = -5 \).\nStep 4: Substitute back:\n\( \det = 1 - 0 - 10 = -9 \)."
    },
    {
      "question": r"Compute the determinant of \( \begin{bmatrix} 2 & 1 & 3 \\ 0 & -2 & 1 \\ 4 & 0 & -1 \end{bmatrix} \).",
      "answer": r"Use cofactor expansion and simplify the 2×2 minors carefully."
    },
    {
      "question": r"Compute the determinant of a \( 4 \times 4 \) matrix where one row is a multiple of another.",
      "answer": r"If a row is a multiple of another, determinant is zero."
    },

    {
      "question": r"Find the image of the vector \( \mathbf{v} = (1, 2) \) under the transformation given by \( T(x, y) = (x + 2y, -x + y) \).",
      "answer": r"Step 1: \( T(1,2) = (1 + 4, -1 + 2) = (5, 1) \)."
    },
    {
      "question": r"Find the image of \( \mathbf{v} = (2, -1) \) under \( T(x, y) = (x + 2y, -x + y) \).",
      "answer": r"Plug in components of the vector directly into the transformation rule."
    },
    {
      "question": r"Let \( T(x, y) = (2x - y, x + 3y) \). Find the image of \( (3, 1) \).",
      "answer": r"Apply the transformation formula to each input component carefully."
    },

    {
      "question": r"A function \( f(x,y) = x^2 + y^2 \) is given. Find and classify the critical point(s).",
      "answer": r"Step 1: \( f_x = 2x, f_y = 2y; f_x = 0, f_y = 0 \Rightarrow x=0, y=0 \).\nStep 2: \( f_{xx}=2, f_{yy}=2, f_{xy}=0 \).\nHessian \( D = f_{xx}f_{yy} - (f_{xy})^2 = 4 > 0, f_{xx}>0 \), minimum at (0,0)."
    },
    {
      "question": r"Let \( f(x,y) = x^2 + 4y^2 \). Find and classify critical point(s).",
      "answer": r"Compute partials and use second derivative test: check \( f_{xx}, f_{yy}, f_{xy} \)."
    },
    {
      "question": r"Let \( f(x,y) = x^3 - 3xy^2 \). Find and classify all critical points.",
      "answer": r"Compute gradient, set it to zero, then use Hessian matrix to classify."
    },

    {
      "question": r"Find the tangent plane to \( z = x^2 + y^2 \) at point \( (1,1,2) \).",
      "answer": r"Step 1: Partial derivatives: \( \frac{\partial z}{\partial x}=2x, \frac{\partial z}{\partial y}=2y \).\nStep 2: At \( (1,1), \frac{\partial z}{\partial x}=2, \frac{\partial z}{\partial y}=2 \).\nStep 3: Tangent plane: \( z - 2 = 2(x-1) + 2(y-1) \)."
    },
    {
      "question": r"Find the tangent plane to \( z = x^2 - y^2 \) at \( (1,2,-3) \).",
      "answer": r"Compute partial derivatives and evaluate them at the point."
    },
    {
      "question": r"Find the tangent plane to \( z = \sin(xy) \) at \( (0,1,0) \).",
      "answer": r"Use product rule and chain rule to compute partial derivatives."
    },

    {
      "question": r"Let \( A = \begin{bmatrix} 1 & 2 & -1 \\ 2 & 3 & 0 \\ -1 & 0 & 1 \end{bmatrix} \).\nCompute \( \det(A) \) and discuss if the associated linear system \( A\mathbf{x} = \mathbf{b} \) is solvable for all \( \mathbf{b} \).",
      "answer": r"Step 1: Calculate the determinant...\nStep 4: Since det A ≠ 0, then matrix A is invertible.\nConclusion: The linear system \( A\mathbf{x} = \mathbf{b} \) has a unique solution for every vector \( \mathbf{b} \)."
    },
    {
      "question": r"Let \( A = \begin{bmatrix} 1 & 0 & 2 \\ 4 & 1 & 0 \\ -1 & 2 & 1 \end{bmatrix} \). Is \( A \) invertible?",
      "answer": r"Check determinant to determine invertibility."
    },
    {
      "question": r"If \( A \) is a \( 3 \times 3 \) matrix with \( \det(A) = 0 \), what can you say about solutions to \( A\mathbf{x} = \mathbf{b} \)?",
      "answer": r"Singular matrix implies the system may have no or infinitely many solutions."
    },

    {
      "question": r"Let \( f(x,y) = e^{xy} + \ln(x + y) \).\nCompute \( f_x \) and \( f_y \), then evaluate \( f_x, f_y \) at \( (1,0) \).",
      "answer": r"Step 1: \( f_x = y e^{xy} + \frac{1}{x + y} \), \( f_y = x e^{xy} + \frac{1}{x + y} \).\nStep 2: At \( (1,0): f_x = 0 + 1 = 1, f_y = 1 + 1 = 2. \)"
    },
    {
      "question": r"Let \( f(x,y) = e^{2xy} + \ln(x - y) \). Find \( f_x \) and \( f_y \).",
      "answer": r"Differentiate using chain rule and quotient/logarithmic rules."
    },
    {
      "question": r"Let \( f(x,y) = x e^{xy} + \ln(x^2 + y^2) \). Find \( f_x \), \( f_y \).",
      "answer": r"Use product rule and chain rule for exponential and logarithmic components."
    }
  ],
};