import 'package:settings_kit/android_settings_kit.dart';
import 'package:settings_kit/ios_settings_kit.dart';

class SettingsKit {
  static AndroidSettingsKit get androidSettings => AndroidSettingsKit();
  static IOSSettingsKit get iosSettings => IOSSettingsKit();
}
