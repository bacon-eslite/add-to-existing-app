package com.example.myapp

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.example.myapp.databinding.ActivityMainBinding
import io.flutter.plugin.common.MethodChannel

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding
            .inflate(layoutInflater)
        val view = binding.root
        setContentView(view)

        warmupFullScreen()

        warmupPartialView()

        binding.btnFullscreen.setOnClickListener {
            FlutterEngineManager().startActivity(this, FlutterRoutes.Fullscreen)
        }

        binding.btnPartialView.setOnClickListener {
            val fragment = FlutterEngineManager()
                .getFragment(this, FlutterRoutes.PartialView)


            val transaction = supportFragmentManager.beginTransaction()

            if (fragment.isAdded) {
                transaction.show(fragment)
            } else {
                transaction.add(R.id.fragment_flutter, fragment, FlutterRoutes.PartialView.name)
            }

            transaction.commit()
        }

        binding.btnWeather.setOnClickListener {
            warmupWeather()
            FlutterEngineManager().startActivity(this, FlutterRoutes.Weather)
        }

        binding.btnUserList.setOnClickListener {
            warmupUsers()
            FlutterEngineManager().startActivity(this, FlutterRoutes.Users)
        }

    }

    override fun onDestroy() {
        super.onDestroy()
        FlutterEngineManager().destroy(FlutterRoutes.PartialView)
        FlutterEngineManager().destroy(FlutterRoutes.Fullscreen)
        FlutterEngineManager().destroy(FlutterRoutes.Weather)
        FlutterEngineManager().destroy(FlutterRoutes.Users)
    }

    private fun warmupPartialView() {
        val engine = FlutterEngineManager().warmup(this, FlutterRoutes.PartialView)

        MethodChannel(
            engine.dartExecutor.binaryMessenger,
            FlutterRoutes.PartialView.name,
        ).setMethodCallHandler { call, result ->
            when (call.method) {
                "message_from_flutter" -> {
                    val message = call.argument<String>("message")
                    binding.tvMessage.text = message
                    result.success("Message received")
                }
            }
        }
    }

    private fun warmupFullScreen() {
        val engine = FlutterEngineManager().warmup(this, FlutterRoutes.Fullscreen)

        MethodChannel(
            engine.dartExecutor.binaryMessenger,
            FlutterRoutes.Fullscreen.name,
        ).setMethodCallHandler { call, result ->
            when (call.method) {
                "message_from_flutter" -> {
                    val message = call.argument<String>("message")
                    binding.tvMessage.text = message
                    result.success("Message received")
                }
            }
        }
    }


    private fun warmupWeather() {
        FlutterEngineManager().warmup(this, FlutterRoutes.Weather)
    }

    private fun warmupUsers() {
        FlutterEngineManager().warmup(this, FlutterRoutes.Users)
    }

}