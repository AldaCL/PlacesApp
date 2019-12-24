package com.example.hello_hell

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        this.getWindow().setStatusBarColor(android.graphics.Color.TRANSPARENT);
    }
    // override fun OnCreate(savedInstanceState: Bundle?){
    //     super.OnCreate(savedInstanceState)
    //     GeneratedPluginRegistrant.registerWith(this)
    //     this.
    // }
}
