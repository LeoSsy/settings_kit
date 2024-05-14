import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'android_settings_kit.dart';

abstract class SettingsKitPlatform extends PlatformInterface {
  @visibleForTesting
  final methodChannel = const MethodChannel('settings_kit');

  final _settingMethodName = "open";

  /// Constructs a SettingsKitPlatform.
  SettingsKitPlatform() : super(token: _token);

  static final Object _token = Object();

  static SettingsKitPlatform _instance = AndroidSettingsKit();

  /// The default instance of [SettingsKitPlatform] to use.
  ///
  /// Defaults to [AndroidSettingsKit].
  static SettingsKitPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SettingsKitPlatform] when
  /// they register themselves.
  static set instance(SettingsKitPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<T?> postMessage<T>({String? action}) async {
    T? res = await methodChannel.invokeMethod<T>(_settingMethodName, action);
    return res;
  }

  /// 自定义跳转参数
  /// Open Android and ios settings by custom action
  /// android action example :  android.settings.SETTINGS. more action view :https://developer.android.com/reference/android/provider/Settings
  /// ios action example     :  App-prefs:ACCESSIBILITY    more prefs view  : https://gist.github.com/deanlyoung/368e274945a6929e0ea77c4eca345560
  /// returns operation successful or failure.
  Future<bool?> customAction(String action) {
    return postMessage<bool?>(action: action);
  }
}
