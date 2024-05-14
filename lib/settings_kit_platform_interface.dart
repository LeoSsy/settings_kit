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

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }


  Future<T?> postMessage<T>({String? methodName, String? action}) async {
    T? res;
    if (methodName != null) {
      res = await methodChannel.invokeMethod<T>(methodName, action);
    } else {
      res = await methodChannel.invokeMethod<T>(_settingMethodName,action);
    }
    return res;
  }
}
