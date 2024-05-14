import Flutter
import UIKit

public class SettingsKitPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "settings_kit", binaryMessenger: registrar.messenger())
    let instance = SettingsKitPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "open":
      let argument = call.arguments
      guard let value = call.arguments as? String else {
        result(false)
        return;
      }
      if let url = URL(string: value) {
        if UIApplication.shared.canOpenURL(url) {
          if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
          } else {
            UIApplication.shared.openURL(url)
          }
          result(true)
        }else{
          result(false)
        }
      }
      
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
