package com.example.myapp

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import com.example.myapp.databinding.ActivityMainBinding
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterFragment
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.MethodChannel

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding
            .inflate(layoutInflater)
        val view = binding.root
        setContentView(view)

        fullscreenSample()

        fragmentSample()
    }

    private fun fragmentSample() {
        val fragmentEngine = FlutterEngine(this)
        fragmentEngine.navigationChannel.setInitialRoute("/fragment")
        fragmentEngine.dartExecutor.executeDartEntrypoint(
            DartExecutor.DartEntrypoint.createDefault()
        )

        FlutterEngineCache.getInstance().put("fragment", fragmentEngine)

        MethodChannel(
            fragmentEngine.dartExecutor.binaryMessenger,
            "fragment"
        ).setMethodCallHandler { call, result ->
            Log.d("MainActivity", "onCreate: ${call.method}, ${call.arguments}")
            when (call.method) {
                "message_to_flutter" -> {
                    result.success("Hello from Android")
                }

                "message_from_flutter" -> {
                    val message = call.argument<String>("message")
                    binding.tvMessage.text = message
                }

                else -> {}
            }
        }

        val fragmentManager = supportFragmentManager;
        val flutterFragment = fragmentManager
            .findFragmentByTag("flutter_fragment") as FlutterFragment?

        if (flutterFragment == null) {
            val newFlutterFragment = FlutterFragment
                .withCachedEngine("fragment")
                .build<FlutterFragment>()

            fragmentManager
                .beginTransaction()
                .add(
                    R.id.fragment_flutter,
                    newFlutterFragment,
                    "flutter_fragment"
                )
                .commit()
        }
    }

    private fun fullscreenSample() {
        val fullscreenEngine = FlutterEngine(this)
        fullscreenEngine.navigationChannel.setInitialRoute("/fullscreen")
        fullscreenEngine.dartExecutor.executeDartEntrypoint(
            DartExecutor.DartEntrypoint.createDefault()
        )

        MethodChannel(
            fullscreenEngine.dartExecutor.binaryMessenger,
            "fullscreen"
        ).setMethodCallHandler { call, result ->
            Log.d("MainActivity", "onCreate: ${call.method}, ${call.arguments}")
            when (call.method) {
                "message_to_flutter" -> {
                    result.success("Hello from Android")
                }

                "message_from_flutter" -> {
                    val message = call.argument<String>("message")
                    binding.tvMessage.text = message
                }

                else -> {}
            }
        }

        FlutterEngineCache.getInstance().put("fullscreen", fullscreenEngine)


        binding.btnFullscreen.setOnClickListener {
            startActivity(
                FlutterActivity
                    .withCachedEngine("fullscreen")
                    .build(this)
            )
        }
    }


}