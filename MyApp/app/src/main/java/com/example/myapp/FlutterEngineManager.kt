package com.example.myapp

import android.content.Context
import androidx.fragment.app.FragmentActivity
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterFragment
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.MethodChannel


class FlutterEngineManager {

    private var engineCache: FlutterEngineCache = FlutterEngineCache.getInstance()

    fun warmup(context: Context, tag: FlutterRoutes): FlutterEngine {
        val engine = engineCache.get(tag.name) ?: FlutterEngine(context)
        engineCache.put(tag.name, engine)
        engine.navigationChannel.setInitialRoute(tag.route)
        engine.dartExecutor.executeDartEntrypoint(
            DartExecutor.DartEntrypoint.createDefault()
        )
        initDefaultMethodChannel(context, tag)
        return engine
    }

    fun destroy(tag: FlutterRoutes) {
        engineCache.remove(tag.name)
    }

    fun getFragment(context: Context, tag: FlutterRoutes): FlutterFragment {
        warmup(context, tag)
        if (context !is FragmentActivity) {
            throw IllegalArgumentException("context must be FragmentActivity")
        }
        val fm = context.supportFragmentManager
        var fragment = fm.findFragmentByTag(tag.name)
        if (fragment == null) {
            fragment = FlutterFragment.withCachedEngine(tag.name).build()
        }
        return fragment as FlutterFragment
    }

    fun startActivity(context: Context, tag: FlutterRoutes) {
        context.startActivity(
            FlutterActivity.withCachedEngine(tag.name).build(context)
        )
    }

    private fun initDefaultMethodChannel(context: Context, tag: FlutterRoutes) {
        val engine = engineCache.get(tag.name) ?: return
        MethodChannel(
            engine.dartExecutor.binaryMessenger,
            FlutterRoutes.Main.route,
        ).setMethodCallHandler { call, result ->
            when (call.method) {
                "message_to_flutter" -> result.success("Hello from Android")
                "exit" -> {
                    when (context) {
                        is FragmentActivity -> result.success(removeFragment(context, tag))

                        is FlutterActivity -> {
                            context.finish()
                            result.success("exit")
                        }

                        else -> {}
                    }
                }
            }
        }
    }

    private fun removeFragment(context: FragmentActivity, tag: FlutterRoutes): String {
        val fragment = context.supportFragmentManager.findFragmentByTag(tag.name)
            ?: return "fragment not found"
        val transaction = context.supportFragmentManager.beginTransaction()
        transaction.remove(fragment)
        transaction.commit()
        return "exit"
    }
}

enum class FlutterRoutes(val route: String) {
    Main("/main"),
    PartialView("/partial_view"),
    Fullscreen("/fullscreen"),
    Weather("/weather"),
    Users("/users"),
}