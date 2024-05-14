import 'dart:io';
import 'package:flutter/material.dart';
import 'package:settings_kit/settings_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
