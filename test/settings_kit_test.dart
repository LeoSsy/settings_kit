import 'package:flutter_test/flutter_test.dart';
import 'package:settings_kit/settings_kit.dart';
import 'package:settings_kit/settings_kit_platform_interface.dart';
import 'package:settings_kit/android_settings_kit.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockSettingsKitPlatform
//     with MockPlatformInterfaceMixin
//     implements SettingsKitPlatform {

//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

void main() {
  final SettingsKitPlatform initialPlatform = SettingsKitPlatform.instance;

  test('$AndroidSettingsKit is the default instance', () {
    expect(initialPlatform, isInstanceOf<AndroidSettingsKit>());
  });

  test('getPlatformVersion', () async {
    SettingsKit settingsKitPlugin = SettingsKit();
    // MockSettingsKitPlatform fakePlatform = MockSettingsKitPlatform();
    // SettingsKitPlatform.instance = fakePlatform;

    // expect(await settingsKitPlugin.getPlatformVersion(), '42');
  });
}
