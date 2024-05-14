# `settings_kit`

A comprehensive Flutter plugin to seamlessly navigate to various settings screens on both iOS and Android devices, ensuring compatibility with the latest versions of both platforms.

## Getting Started 

```dart

dependencies:
		settings_kit: ^1.0.1

```

# 🚀 Usage

Add this to your package's `pubspec.yaml` file:

```dart
import 'package:settings_kit/settings_kit.dart';
```

```dart
import 'package:flutter/material.dart';
import 'package:settings_kit/settings_kit.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Settings_kit example app'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    if (Platform.isAndroid) {
                      SettingsKit.androidSettings.system();
                    } else if (Platform.isIOS) {
                      SettingsKit.iosSettings.system();
                    }
                  },
                  child: Text(
                    'system',
                    style: TextStyle(
                      fontSize: 13,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (Platform.isAndroid) {
                      SettingsKit.androidSettings.wifi();
                    } else if (Platform.isIOS) {
                      SettingsKit.iosSettings.wifi();
                    }
                  },
                  child: Text(
                    'wifi',
                    style: TextStyle(
                      fontSize: 13,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (Platform.isAndroid) {
                      SettingsKit.androidSettings.dateAndTime();
                    } else if (Platform.isIOS) {
                      SettingsKit.iosSettings.dateAndTime();
                    }
                  },
                  child: Text(
                    'dateAndTime',
                    style: TextStyle(
                      fontSize: 13,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (Platform.isAndroid) {
                      SettingsKit.androidSettings.accessibility();
                    } else if (Platform.isIOS) {
                      SettingsKit.iosSettings.accessibility();
                    }
                  },
                  child: Text(
                    'accessibility',
                    style: TextStyle(
                      fontSize: 13,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (Platform.isAndroid) {
                      SettingsKit.androidSettings.customAction('android.settings.APP_SEARCH_SETTINGS');
                    } else if (Platform.isIOS) {
                      SettingsKit.iosSettings.customAction('App-prefs:ACCESSIBILITY');
                    }
                  },
                  child: Text(
                    'custom action',
                    style: TextStyle(
                      fontSize: 13,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    )
  );
```

For more examples and use-cases, refer to the `example` directory.

## 🌟 Features

### Android:

Navigate directly to:

- System Settings
- Wi-Fi
- Picture in Picture
- Android Beam
- NFC
- Dream
- sync
- Add Account
- Night Display
- Data Roaming
- Location Source
- App Settings
- Bluetooth
- Notifications
- Security
- Sound
- Display
- Date & Time
- Device Information
- Internal Storage
- Memory Card
- Accessibility
- Add Account
- Airplane Mode
- APN Settings
- Application Details
- Application Development
- Application Notifications
- Application Write Settings
- App search
- Battery Saver
- Captioning
- Cast
- Data Usage
- App Notification Bubble
- Search
- Biometric Enrollment
- Hardware Keyboard
- Home
- Ignore Background Data Restrictions
- Ignore Battery Optimization
- Input Method
- Input Method Subtype
- Voice Input
- Locale
- Manage All Applications
- Manage External Sources
- Manage unknown app sources 
- Manage Overlay
- custom Action
... and more features being added regularly!

### iOS:

Navigate directly to:

- System Settings
- Maps
- GameCenter
- shortcuts
- news
- vpn
- screen Time
- Wi-Fi
- General Settings
- About
- Accessibility
- Account Settings
- Auto Lock
- Battery
- Bluetooth
- Date & Time
- Face ID & Passcode
- Cellular
- Dictionary
- Display & Brightness
- FaceTime
- General
- HealthKit
- iCloud
- Music
- Keyboard
- Language & Region
- Location Services
- Personal Hotspot
- Phone
- Photos & Camera
- Privacy
- Profiles & Device Management
- Software Update
- Storage & Backup
- Siri
- Sounds & Haptics
- custom Action
... and more features being added regularly!

## 🙏 Acknowledgments

This package refrence  [open_settings_plus](https://github.com/yanncabral/open_settings_plus) implementation then My Project added new featured of part.

This package git repository is [settings_kit](https://github.com/LeoSsy/settings_kit).

## 🐞 Bugs or Feature Requests

Encountered an issue or have a feature in mind? We'd love to hear from you!

- Report issues or seek features [here](https://github.com/LeoSsy/settings_kit/issues/new).
- Contributions via pull requests are always welcome!

---

This revised README provides a more structured and polished presentation of the plugin's features and usage.



