package com.leboneng.mathletics

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        // No need to manually register plugins in recent Flutter versions,
        // but if you do:
        GeneratedPluginRegistrant.registerWith(flutterEngine)
    }
}