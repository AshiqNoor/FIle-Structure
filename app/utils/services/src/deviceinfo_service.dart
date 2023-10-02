part of services;

class DeviceInfo {
  static Future<String> getDeviceId() async {
    String deviceIdentifier = "unknown";
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      deviceIdentifier = androidInfo.id!;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      deviceIdentifier = iosInfo.identifierForVendor!;
    } else if (kIsWeb) {
      // The web doesnt have a device UID, so use a combination fingerprint as an example
      WebBrowserInfo webInfo = await deviceInfo.webBrowserInfo;
      deviceIdentifier = webInfo.vendor! +
          webInfo.userAgent! +
          webInfo.hardwareConcurrency.toString();
    } else if (Platform.isLinux) {
      LinuxDeviceInfo linuxInfo = await deviceInfo.linuxInfo;
      deviceIdentifier = linuxInfo.machineId!;
    }
    return deviceIdentifier;
  }

  static Future<int> getDeviceSdk() async {
    int deviceIdentifier = 0;
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      deviceIdentifier = androidInfo.version.sdkInt!;
    }
    return deviceIdentifier;
  }
}
