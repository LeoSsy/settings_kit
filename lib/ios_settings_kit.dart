import 'settings_kit_platform_interface.dart';

class IOSSettingsKit extends SettingsKitPlatform {

  /// Open iOS settings
  Future<bool?> system() async {
    return postMessage<bool?>(action: 'App-prefs:');
  }

  /// Open iOS settings in `Wi-Fi` section.
  /// returns operation successful or failure.
  Future<bool?> wifi() {
    return postMessage<bool?>(action: 'App-Prefs:WIFI');
  }

  /// Open the app settings.
  /// returns operation successful or failure.
  Future<bool?> appSettings() {
    return postMessage<bool?>(action: 'App-prefs:app-settings');
  }

  /// Open iOS settings in `About` section.
  /// returns operation successful or failure.
  Future<bool?> about() {
    return postMessage<bool?>(action: 'App-Prefs:General&path=About');
  }

  /// Open iOS settings in accessibility section.
  Future<bool?> accessibility() {
    return postMessage<bool?>(action: 'App-prefs:ACCESSIBILITY');
  }

  /// Open iOS settings in `Account Settings` section.
  /// returns operation successful or failure.
  Future<bool?> account() {
    return postMessage<bool?>(action: 'App-prefs:ACCOUNT_SETTINGS');
  }

  /// Open iOS settings in auto lock section.
  Future<bool?> autoLock() {
    return postMessage<bool?>(action: 'App-prefs:DISPLAY&path=AUTOLOCK');
  }

  /// Open iOS settings in `Battery` section.
  /// returns operation successful or failure.
  Future<bool?> battery() {
    return postMessage<bool?>(action: 'App-prefs:BATTERY_USAGE');
  }

  /// Open iOS settings in `Bluetooth` section.
  /// returns operation successful or failure.
  Future<bool?> bluetooth() {
    return postMessage<bool?>(action: 'App-prefs:=Bluetooth');
  }

  /// Open iOS settings in `Date & Time` section.
  /// returns operation successful or failure.
  Future<bool?> dateAndTime() {
    return postMessage<bool?>(action: 'App-prefs:General&path=DATE_AND_TIME');
  }

  /// Open iOS settings in `FaceID and Passcode` section.
  /// returns operation successful or failure.
  Future<bool?> faceIDAndPasscode() {
    return postMessage<bool?>(action: 'App-prefs:TOUCHID_PASSCODE');
  }

  /// Open iOS settings in `Cellular` section.
  /// returns operation successful or failure.
  Future<bool?> cellular() {
    return postMessage<bool?>(action: 'App-prefs:MOBILE_DATA_SETTINGS_ID');
  }

  /// Open iOS settings in `Dictionary` section.
  /// returns operation successful or failure.
  Future<bool?> dictionary() {
    return postMessage<bool?>(action: 'App-prefs:General&path=DICTIONARY');
  }

  /// Open iOS settings in `Display & Brighness` section.
  /// returns operation successful or failure.
  Future<bool?> displayAndBrightness() {
    return postMessage<bool?>(action: 'App-prefs:DISPLAY');
  }

  /// Open iOS settings in `FaceTime` section.
  /// returns operation successful or failure.
  Future<bool?> facetime() {
    return postMessage<bool?>(action: 'App-prefs:FACETIME');
  }

  /// Open iOS settings in `General` section.
  /// returns operation successful or failure.
  Future<bool?> general() {
    return postMessage<bool?>(action: 'App-prefs:General');
  }

  ///
  /// Open iOS settings in HealthKit section.
  /// returns operation successful or failure.
  Future<bool?> healthKit() {
    return postMessage<bool?>(action: 'App-prefs:HEALTH&path=SOURCES');
  }

  /// Open iOS settings in iCloud section.
  /// returns operation successful or failure.
  Future<bool?> iCloud() {
    return postMessage<bool?>(action: 'App-prefs:CASTLE');
  }

  /// Open iOS settings in Music section.
  /// returns operation successful or failure.
  Future<bool?> music() {
    return postMessage<bool?>(action: 'App-prefs:MUSIC');
  }

  /// Open iOS settings in Keyboard section.
  /// returns operation successful or failure.
  Future<bool?> keyboard() {
    return postMessage<bool?>(action: 'App-prefs:General&path=Keyboard');
  }

  /// Open iOS settings in Keyboards section.
  /// returns operation successful or failure.
  Future<bool?> keyboards() {
    return postMessage<bool?>(
        action: 'App-prefs:General&path=Keyboard/KEYBOARDS');
  }

  /// Open iOS settings in `Language & Region` section.
  /// returns operation successful or failure.
  Future<bool?> languageAndRegion() {
    return postMessage<bool?>(action: 'App-prefs:General&path=INTERNATIONAL');
  }

  /// Open iOS settings in `Location Service` section.
  /// returns operation successful or failure.
  Future<bool?> locationServices() {
    return postMessage<bool?>(action: 'App-prefs:LOCATION_SERVICES');
  }

  /// Open iOS settings in `Personal Hotspot` section.
  /// returns operation successful or failure.
  Future<bool?> personalHotspot() {
    return postMessage<bool?>(action: 'App-prefs:INTERNET_TETHERING');
  }

  /// Open iOS settings in `Notes` section.
  /// returns operation successful or failure.
  Future<bool?> notes() {
    return postMessage<bool?>(action: 'App-prefs:=NOTES');
  }

  /// Open iOS settings in `Phone` section.
  /// returns operation successful or failure.
  Future<bool?> phone() {
    return postMessage<bool?>(action: 'App-prefs:Phone');
  }

  /// Open iOS settings in `notifications` section.
  /// returns operation successful or failure.
  Future<bool?> notifications() {
    return postMessage<bool?>(action: 'App-prefs:NOTIFICATIONS_ID');
  }

  /// Open iOS settings in `Photos & Camera` section.
  /// returns operation successful or failure.
  Future<bool?> photosAndCamera() {
    return postMessage<bool?>(action: 'App-prefs:Photos');
  }

  /// Open iOS settings in `Privacy` section.
  /// returns operation successful or failure.
  Future<bool?> privacy() {
    return postMessage<bool?>(action: 'App-prefs:Privacy');
  }

  /// Open iOS settings in `Profiles and Device Management` section.
  /// returns operation successful or failure.
  Future<bool?> profilesAndDeviceManagement() {
    return postMessage<bool?>(
        action: 'App-prefs:General&path=ManagedConfigurationList');
  }

  /// Open iOS settings in `Software Update` section.
  /// returns operation successful or failure.
  Future<bool?> softwareUpdate() {
    return postMessage<bool?>(
        action: 'App-prefs:General&path=SOFTWARE_UPDATE_LINK');
  }

  /// Open iOS settings in `Storage and Backup` section.
  /// returns operation successful or failure.
  Future<bool?> storageAndBackup() {
    return postMessage<bool?>(
        action: 'App-prefs:CASTLE&path=STORAGE_AND_BACKUP');
  }

  /// Open iOS settings in `Siri` section.
  /// returns operation successful or failure.
  Future<bool?> siri() {
    return postMessage<bool?>(action: 'App-prefs:SIRI');
  }

  /// Open iOS settings in `Sounds & Haptics` section.
  /// returns operation successful or failure.
  Future<bool?> soundsAndHaptics() {
    return postMessage<bool?>(action: 'App-prefs:Sounds');
  }

  /// Open iOS settings in `Wallpapers` section`
  /// returns operation successful or failure.
  Future<bool?> wallpapers() {
    return postMessage<bool?>(action: 'App-prefs:Wallpaper');
  }

  /// Open iOS settings in `Passbook` section`
  /// returns operation successful or failure.
  Future<bool?> passbook() {
    return postMessage<bool?>(action: 'App-Prefs:passbook');
  }

  /// Open iOS settings in `airplane Mode` section`
  /// returns operation successful or failure.
  Future<bool?> airplaneMode() {
    return postMessage<bool?>(action: 'App-Prefs:AIRPLANE_MODE');
  }

  /// Open iOS settings in `Maps` section`
  /// returns operation successful or failure.
  Future<bool?> maps() {
    return postMessage<bool?>(action: 'App-Prefs:MAPS');
  }

  /// Open iOS settings in `GameCenter` section`
  /// returns operation successful or failure.
  Future<bool?> gameCenter() {
    return postMessage<bool?>(action: 'App-Prefs:GAMECENTER');
  }

  /// Open iOS settings in `shortcuts` section`
  /// returns operation successful or failure.
  Future<bool?> shortcuts() {
    return postMessage<bool?>(action: 'App-Prefs:SHORTCUTS');
  }

  /// Open iOS settings in `news` section`
  /// returns operation successful or failure.
  Future<bool?> news() {
    return postMessage<bool?>(action: 'App-Prefs:NEWS');
  }

  /// Open iOS settings in `vpn` section`
  /// returns operation successful or failure.
  Future<bool?> vpn() {
    return postMessage<bool?>(action: 'App-Prefs:General&path=VPN');
  }

  /// Open iOS settings in `screen time` section`
  /// returns operation successful or failure.
  Future<bool?> screenTime() {
    return postMessage<bool?>(action: 'App-Prefs:SCREEN_TIME');
  }
}
