import 'settings_kit_platform_interface.dart';

class AndroidSettingsKit extends SettingsKitPlatform {
  
  /// 系统设置
  /// Open Android settings in `System Settings` section.
  /// returns operation successful or failure.
  Future<bool?> system() {
    return postMessage<bool?>(action: 'android.settings.SETTINGS');
  }

  /// APN 设置
  /// Open Android settings in `Apn Settings` section.
  /// returns operation successful or failure.
  Future<bool?> apn() {
    return postMessage<bool?>(action: 'android.settings.APN_SETTINGS');
  }

  /// 位置信息
  /// Open Android settings in `Location` section.
  /// returns operation successful or failure.
  Future<bool?> locationSource() {
    return postMessage<bool?>(
        action: 'android.settings.LOCATION_SOURCE_SETTINGS');
  }

  /// 位置信息服务
  /// Open Android settings in `Location` section.
  /// returns operation successful or failure.
  Future<bool?> locationScanning() {
    return postMessage<bool?>(
        action: 'android.settings.LOCATION_SCANNING_SETTINGS');
  }

  /// 用户设置
  /// Open Android settings in `user Settings` section.
  /// returns operation successful or failure.
  Future<bool?> user() {
    return postMessage<bool?>(action: 'android.settings.USER_SETTINGS');
  }

  /// 无线设置
  /// Open Android settings in `Wireless Settings` section.
  /// returns operation successful or failure.
  Future<bool?> wireless() {
    return postMessage<bool?>(action: 'android.settings.WIRELESS_SETTINGS');
  }

  /// 无障碍服务
  /// Open Android settings in `Accessbility` section.
  /// returns operation successful or failure.
  Future<bool?> accessibility() {
    return postMessage<bool?>(
        action: 'android.settings.ACCESSIBILITY_SETTINGS');
  }

  /// 有权查看使用情况的应用
  /// Open Android settings in `Usage access Settings` section.
  /// returns operation successful or failure.
  Future<bool?> usageAccess() {
    return postMessage<bool?>(action: 'android.settings.USAGE_ACCESS_SETTINGS');
  }

  /// 安全
  /// Open Android settings in `Security` section.
  /// returns operation successful or failure.
  Future<bool?> security() {
    return postMessage<bool?>(action: 'android.settings.SECURITY_SETTINGS');
  }

  /// 管理安装未知应用
  /// Open Android settings in `Manage unknown app sources Settings` section.
  /// returns operation successful or failure.
  Future<bool?> manageUnknownAppSources() {
    return postMessage<bool?>(
        action: 'android.settings.MANAGE_UNKNOWN_APP_SOURCES');
  }

  /// 信任凭据
  /// Open Android settings in `Trusted cerdentials Settings` section.
  /// returns operation successful or failure.
  Future<bool?> trustedCredentialsUser() {
    return postMessage<bool?>(
        action: 'com.android.settings.TRUSTED_CREDENTIALS_USER');
  }

  /// 隐私中心
  /// Open Android settings in `Privacy Settings` section.
  /// returns operation successful or failure.
  Future<bool?> privacy() {
    return postMessage<bool?>(action: 'android.settings.PRIVACY_SETTINGS');
  }

  /// VPN设置
  /// Open Android settings in `VPN Settings` section.
  /// returns operation successful or failure.
  Future<bool?> vpn() {
    return postMessage<bool?>(action: 'android.settings.VPN_SETTINGS');
  }

  /// WIFI设置
  /// Open Android settings in `Wi-Fi` section.
  /// returns operation successful or failure.
  Future<bool?> wifi() {
    return postMessage<bool?>(action: 'android.settings.WIFI_SETTINGS');
  }

  /// WIFI偏好设置
  /// Open Android settings in `WIFI IP Settings` section.
  /// returns operation successful or failure.
  Future<bool?> wifiIp() {
    return postMessage<bool?>(action: 'android.settings.WIFI_IP_SETTINGS');
  }

  /// 蓝牙
  /// Open Android settings in `Bluetooth` section.
  /// returns operation successful or failure.
  Future<bool?> bluetooth() {
    return postMessage<bool?>(action: 'android.settings.BLUETOOTH_SETTINGS');
  }

  /// 应用搜索
  /// Open Android settings in `App search Settings` section.
  /// returns operation successful or failure.
  Future<bool?> appSearch() {
    return postMessage<bool?>(action: 'android.settings.APP_SEARCH_SETTINGS');
  }

  /// 辅助手势
  /// Open Android settings in `Assist gesture Settings` section.
  /// returns operation successful or failure.
  Future<bool?> assistGestrue() {
    return postMessage<bool?>(
        action: 'android.settings.ASSIST_GESTURE_SETTINGS');
  }

  /// 投射设置
  /// Open Android settings in `Cast` section.
  /// returns operation successful or failure.
  Future<bool?> cast() {
    return postMessage<bool?>(action: 'android.settings.CAST_SETTINGS');
  }

  /// 日期和时间
  /// Open Android settings in `Date` section.
  /// returns operation successful or failure.
  Future<bool?> dateAndTime() {
    return postMessage<bool?>(action: 'android.settings.DATE_SETTINGS');
  }

  /// 声音设置
  /// Open Android settings in `Sound` section.
  /// returns operation successful or failure.
  Future<bool?> sound() {
    return postMessage<bool?>(action: 'android.settings.SOUND_SETTINGS');
  }

  /// 显示设置
  ///  /// Open Android settings in `Display` section.
  /// returns operation successful or failure.
  Future<bool?> display() {
    return postMessage<bool?>(action: 'android.settings.DISPLAY_SETTINGS');
  }

  /// 护眼模式
  /// Open Android settings in `Night Display` section.
  /// returns operation successful or failure.
  Future<bool?> nightDisplay() {
    return postMessage<bool?>(
        action: 'android.settings.NIGHT_DISPLAY_SETTINGS');
  }

  /// 本地化设置
  /// Open Android settings in `Locale` section.
  /// returns operation successful or failure.
  Future<bool?> locale() {
    return postMessage<bool?>(action: 'android.settings.LOCALE_SETTINGS');
  }

  /// 语音输入
  /// Open Android settings in `Voice Input` section.
  /// returns operation successful or failure.
  Future<bool?> voiceInput() {
    return postMessage<bool?>(action: 'android.settings.VOICE_INPUT_SETTINGS');
  }

  /// 输入法
  /// Open Android settings in `Input Method` section.
  /// returns operation successful or failure.
  Future<bool?> inputMethod() {
    return postMessage<bool?>(action: 'android.settings.INPUT_METHOD_SETTINGS');
  }

  /// 输入法键盘
  /// Open Android settings in `Input Method Subtype` section.
  /// returns operation successful or failure.
  Future<bool?> inputMethodType() {
    return postMessage<bool?>(
        action: 'android.settings.INPUT_METHOD_SUBTYPE_SETTINGS');
  }

  /// 个人字典
  /// Open Android settings in `Dictionary` section.
  /// returns operation successful or failure.
  Future<bool?> userDictionary() {
    return postMessage<bool?>(
        action: 'android.settings.USER_DICTIONARY_SETTINGS');
  }

  /// 实体键盘
  /// Open Android settings in `HardKeyboard` section.
  /// returns operation successful or failure.
  Future<bool?> hardKeyboard() {
    return postMessage<bool?>(
        action: 'android.settings.HARD_KEYBOARD_SETTINGS');
  }

  /// 添加到字典
  /// Open Android settings in `User dictionary insert` section.
  /// returns operation successful or failure.
  Future<bool?> userDictionaryInsert() {
    return postMessage<bool?>(
        action: 'com.android.settings.USER_DICTIONARY_INSERT');
  }

  /// 应用设置
  /// Open Android settings in `Application Settings` section.
  /// returns operation successful or failure.
  Future<bool?> application() {
    return postMessage<bool?>(action: 'android.settings.APPLICATION_SETTINGS');
  }

  /// 开发者选项
  /// Open Android settings in `Application Development` section.
  /// returns operation successful or failure.
  Future<bool?> applicationDevelopment() {
    return postMessage<bool?>(
        action: 'android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
  }

  /// 应用管理
  /// Open Android settings in `Manage Application` section.
  /// returns operation successful or failure.
  Future<bool?> manageApplications() {
    return postMessage<bool?>(
        action: 'android.settings.MANAGE_APPLICATIONS_SETTINGS');
  }

  /// 管理所有应用
  /// Open Android settings in `Manage All Applications` section.
  /// returns operation successful or failure.
  Future<bool?> manageAllApplications() {
    return postMessage<bool?>(
        action: 'android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS');
  }

  /// 显示在其它应用上层
  /// Open Android settings in `Manage Overlay` section.
  /// returns operation successful or failure.
  Future<bool?> manageOverlayPermission() {
    return postMessage<bool?>(
        action: 'android.settings.action.MANAGE_OVERLAY_PERMISSION');
  }

  /// 可修改系统设置
  Future<bool?> manageWrite() {
    return postMessage<bool?>(
        action: 'android.settings.action.MANAGE_WRITE_SETTINGS');
  }

  /// 应用省电控制
  /// Open Android settings in `Ignore Battery Optimization` section.
  /// returns operation successful or failure.
  Future<bool?> ignoreBatteryOptimization() {
    return postMessage<bool?>(
        action: 'android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS');
  }

  /// 系统更新
  /// Open Android settings in `Apn Settings` section.
  /// returns operation successful or failure.
  Future<bool?> systemUpdate() {
    return postMessage<bool?>(
        action: 'android.settings.SYSTEM_UPDATE_SETTINGS');
  }

  /// 账号与同步
  /// Account sync
  Future<bool?> sync() {
    return postMessage<bool?>(action: 'android.settings.SYNC_SETTINGS');
  }

  /// 添加账号
  /// Open Android settings in `Add Account` section.
  /// returns operation successful or failure.
  Future<bool?> addAccount() {
    return postMessage<bool?>(action: 'android.settings.ADD_ACCOUNT_SETTINGS');
  }

  /// 流量节省程序
  Future<bool?> dataSaver() {
    return postMessage<bool?>(action: 'android.settings.DATA_SAVER_SETTINGS');
  }

  /// sim卡网络设置
  Future<bool?> networkOperator() {
    return postMessage<bool?>(
        action: 'android.settings.NETWORK_OPERATOR_SETTINGS');
  }

  /// 数据和漫游
  /// Open Android settings in `Data & Roaming` section.
  /// returns operation successful or failure.
  Future<bool?> dataRoaming() {
    return postMessage<bool?>(action: 'android.settings.DATA_ROAMING_SETTINGS');
  }

  /// 内部存储设置
  /// Open Android settings in `Internal Storage` section.
  /// returns operation successful or failure.
  Future<bool?> internalStorage() {
    return postMessage<bool?>(
        action: 'android.settings.INTERNAL_STORAGE_SETTINGS');
  }

  /// 内存卡设置
  /// Open Android settings in `Memory Card` section.
  /// returns operation successful or failure.
  Future<bool?> memoryCard() {
    return postMessage<bool?>(action: 'android.settings.MEMORY_CARD_SETTINGS');
  }

  /// 搜索设置
  /// Open Android settings in `Search` section.
  /// returns operation successful or failure.
  Future<bool?> search() {
    return postMessage<bool?>(action: 'android.search.action.SEARCH_SETTINGS');
  }

  /// 关于本机
  /// Open Android settings in `About` section.
  /// returns operation successful or failure.
  Future<bool?> deviceInfo() {
    return postMessage<bool?>(action: 'android.settings.DEVICE_INFO_SETTINGS');
  }

  /// NFC设置
  /// Open Android settings in `NFC` section.
  Future<bool?> nfc() {
    return postMessage<bool?>(action: 'android.settings.NFC_SETTINGS');
  }

  /// Android Beam 设置
  /// Open Android settings in `Android Beam Settings` section.
  /// returns operation successful or failure.
  Future<bool?> nfcShareing() {
    return postMessage<bool?>(action: 'android.settings.NFCSHARING_SETTINGS');
  }

  /// NFC 响应式付款
  /// Open Android settings in `NFC payment Settings` section.
  /// returns operation successful or failure.
  Future<bool?> nfcPayment() {
    return postMessage<bool?>(action: 'android.settings.NFC_PAYMENT_SETTINGS');
  }

  /// 屏保设置
  /// Open Android settings in `Dream Settings` section.
  /// returns operation successful or failure.
  Future<bool?> dream() {
    return postMessage<bool?>(action: 'android.settings.DREAM_SETTINGS');
  }

  /// 增强型通知设置
  /// Open Android settings in `Notification assistant Settings` section.
  /// returns operation successful or failure.
  Future<bool?> notificationAssistant() {
    return postMessage<bool?>(
        action: 'android.settings.NOTIFICATION_ASSISTANT_SETTINGS');
  }

  /// 设备和应用通知
  /// Open Android settings in `Action notification listener Settings` section.
  /// returns operation successful or failure.
  Future<bool?> actionNotificationListener() {
    return postMessage<bool?>(
        action: 'android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS');
  }

  /// 勿扰权限
  /// Open Android settings in `Notification policy access Settings` section.
  /// returns operation successful or failure.
  Future<bool?> notificationPolicyAccess() {
    return postMessage<bool?>(
        action: 'android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS');
  }

  /// 时间表
  /// Open Android settings in `Action condition provider Settings` section.
  /// returns operation successful or failure.
  Future<bool?> actionConditionProvider() {
    return postMessage<bool?>(
        action: 'android.settings.ACTION_CONDITION_PROVIDER_SETTINGS');
  }

  /// 字幕偏好设置
  /// Open Android settings in `Captioning` section.
  /// returns operation successful or failure.
  Future<bool?> captioning() {
    return postMessage<bool?>(action: 'android.settings.CAPTIONING_SETTINGS');
  }

  /// 打印设置
  /// Open Android settings in `Action print` section.
  /// returns operation successful or failure.
  Future<bool?> actionPrint() {
    return postMessage<bool?>(action: 'android.settings.ACTION_PRINT_SETTINGS');
  }

  /// 声音与触感
  /// Open Android settings in `Zen mode` section.
  /// returns operation successful or failure.
  Future<bool?> zenMode() {
    return postMessage<bool?>(action: 'android.settings.ZEN_MODE_SETTINGS');
  }

  /// 勿扰模式通知设置
  /// Open Android settings in `Zen mode onboarding` section.
  /// returns operation successful or failure.
  Future<bool?> zenModeOnBoarding() {
    return postMessage<bool?>(action: 'android.settings.ZEN_MODE_ONBOARDING');
  }

  /// 省电模式
  /// Open Android settings in `Battery Saver` section.
  /// returns operation successful or failure.
  Future<bool?> batterySaver() {
    return postMessage<bool?>(
        action: 'android.settings.BATTERY_SAVER_SETTINGS');
  }

  /// 设置主屏幕
  /// Open Android settings in `Home` section.
  /// returns operation successful or failure.
  Future<bool?> home() {
    return postMessage<bool?>(action: 'android.settings.HOME_SETTINGS');
  }

  /// 默认应用
  /// Open Android settings in `Manage Default Apps` section.
  /// returns operation successful or failure.
  Future<bool?> mangeDefaultApps() {
    return postMessage<bool?>(
        action: 'android.settings.MANAGE_DEFAULT_APPS_SETTINGS');
  }

  /// 通知设置
  /// Open Android settings in `Notification` section.
  /// returns operation successful or failure.
  Future<bool?> notification() {
    return postMessage<bool?>(action: 'android.settings.NOTIFICATION_SETTINGS');
  }

  /// 所有应用通知管理
  /// Open Android settings in `Manage all applications notification` section.
  /// returns operation successful or failure.
  Future<bool?> allAppsNotification() {
    return postMessage<bool?>(
        action: 'android.settings.ALL_APPS_NOTIFICATION_SETTINGS');
  }

  /// VR助手服务
  /// Open Android settings in `VR assistant services ` section.
  /// returns operation successful or failure.
  Future<bool?> vrListener() {
    return postMessage<bool?>(action: 'android.settings.VR_LISTENER_SETTINGS');
  }

  /// 画中画设置
  /// Open Android settings in `Picture in Picture ` section.
  /// returns operation successful or failure.
  Future<bool?> pictureInPicture() {
    return postMessage<bool?>(
        action: 'android.settings.PICTURE_IN_PICTURE_SETTINGS');
  }

  /// 设置允许应用打开的链接
  /// Open Android settings in `Manage domain URLS ` section.
  /// returns operation successful or failure.
  Future<bool?> manageDominURIS() {
    return postMessage<bool?>(action: 'android.settings.MANAGE_DOMAIN_URLS');
  }

  /// 飞行模式
  /// Open Android settings in `Airplane Mode` section.
  /// returns operation successful or failure.
  Future<bool?> airplaneMode() {
    return postMessage(
      action: 'android.settings.AIRPLANE_MODE_SETTINGS',
    );
  }

  /// 应用详细设置
  /// Open Android settings in `Application Details` section.
  /// returns operation successful or failure.
  Future<bool?> applicationDetails() {
    return postMessage(
      action: 'android.settings.APPLICATION_DETAILS_SETTINGS',
    );
  }

  /// 应用通知设置
  /// Open Android settings in `Application Notification` section.
  /// returns operation successful or failure.
  Future<bool?> applicationNotification() {
    return postMessage(
      action: 'android.settings.APPLICATION_NOTIFICATION_SETTINGS',
    );
  }

  /// 应用写入设置
  /// Open Android settings in `Application Write Settings` section.
  /// returns operation successful or failure.
  Future<bool?> applicationWrite() {
    return postMessage(
      action: 'android.settings.APPLICATION_WRITE_SETTINGS',
    );
  }

  /// 数据使用设置
  /// Open Android settings in `Data Usage` section.
  /// returns operation successful or failure.
  Future<bool?> dataUsage() {
    return postMessage(
      action: 'android.settings.DATA_USAGE_SETTINGS',
    );
  }

  /// 通知气泡设置
  /// Open Android settings in `App Notification Bubble` section.
  /// returns operation successful or failure.
  Future<bool?> appNotificationBubble() {
    return postMessage(
      action: 'android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS',
    );
  }

  /// 应用通知设置
  /// Open Android settings in `App Notification` section.
  /// returns operation successful or failure.
  Future<bool?> appNotification() {
    return postMessage(
      action: 'android.settings.APP_NOTIFICATION_SETTINGS',
    );
  }

  /// 生物识别注册
  /// Open Android settings in `Biometric Enroll` section.
  /// returns operation successful or failure.
  Future<bool?> biometricEnroll() {
    return postMessage(
      action: 'android.settings.BIOMETRIC_ENROLL',
    );
  }

  /// 忽略后台数据显示
  /// Open Android settings in `Ignore Background Data Restrictions` section.
  /// returns operation successful or failure.
  Future<bool?> ignoreBackgroundDataRestrictions() {
    return postMessage(
      action: 'android.settings.IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS',
    );
  }

  /// 管理外部资源
  /// Open Android settings in `Manage External Sources` section.
  /// returns operation successful or failure.
  Future<bool?> manageExternalSources() {
    return postMessage(
      action: 'android.settings.MANAGE_EXTERNAL_SOURCES_SETTINGS',
    );
  }
}
