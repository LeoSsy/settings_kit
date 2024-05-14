package com.example.settings_kit

import android.bluetooth.BluetoothClass
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.provider.Settings
import android.util.Log
import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import java.util.logging.Logger

/** SettingsKitPlugin */
class SettingsKitPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
//  private lateinit var channel : MethodChannel
//  private  lateinit var pluginBinder:FlutterPlugin.FlutterPluginBinding
//  private  lateinit var pContenxt:Context
//
  companion object {
    public var TAG = "SettingsKitPlugin"
    private lateinit var channel : MethodChannel
    private  lateinit var pluginBinder:FlutterPlugin.FlutterPluginBinding
    private  lateinit var pContenxt:Context
  }

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "settings_kit")
    pluginBinder = flutterPluginBinding
    pContenxt = flutterPluginBinding.getApplicationContext()
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    when(call.method){
      "open" -> openSystemActivity(call.arguments,result)
      "getPlatformVersion" -> getPlatformVersion(result)
    }
  }

  private fun getPlatformVersion(result: Result){
    var version =  pContenxt.applicationInfo.minSdkVersion
    result.success(version)
  }

  private fun openSystemActivity(action:Any,result: Result){
    var intent = Intent(action.toString())
    if (intent.action != null){
      try {
        intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK
        pContenxt.startActivity(intent)
        result.success(true)
      }catch (e:Exception){
        Log.d(TAG,"\${message}")
        result.success(false)
      }
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
