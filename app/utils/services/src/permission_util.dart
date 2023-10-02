part of services;

class PermissionUtil {
  static Future<bool> getPermission(
      BuildContext? context, Permission setting) async {
    if (Platform.isIOS) {
      if (await setting.request().isGranted ||
          await setting.request().isLimited) {
        return true;
      } else {
        bool result = await openDialog(context!);
        if (result) {
          if (await setting.isGranted) {
            return true;
          } else {
            return false;
          }
        } else {
          return false;
        }
      }
    } else {
      //check for Android 13
      if (await DeviceInfo.getDeviceSdk() >= 33) {
        if (setting == Permission.storage) {
          return await requestPermission(context!, Permission.photos);
        } else {
          return await requestPermission(context!, setting);
        }
      } // Only check for storage < Android 13
      else {
        if (setting == Permission.photos) {
          return await requestPermission(context!, Permission.storage);
        } else {
          return await requestPermission(context!, setting);
        }
      }
    }
  }

  static Future<bool> requestPermission(
      BuildContext? context, Permission setting) async {
    PermissionStatus status = await setting.status;
    if (status.isGranted) {
      return true;
    } else {
      PermissionStatus requestStatus = await setting.request();
      if (requestStatus.isGranted) {
        return true;
      } else if (requestStatus.isDenied) {
        return false;
      } else {
        bool result = await openDialog(context!);
        if (result) {
          if (requestStatus.isGranted) {
            return true;
          } else {
            return false;
          }
        } else {
          return false;
        }
      }
    }
  }

  static Future<bool> openDialog(BuildContext context) async {
    // final context = navigatorKey.currentState!.context;
    final result = await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            elevation: 0,
            backgroundColor: const Color(0xffffffff),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 15),
                const Text(
                  "Permissions required",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Please grant the required permissions in the app settings to continue.",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Divider(
                  height: 1,
                  color: greyCOLOR,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: InkWell(
                    highlightColor: Colors.grey[200],
                    onTap: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Center(
                      child: Text(
                        "Open settings",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(
                  height: 1,
                  color: greyCOLOR,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: InkWell(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    highlightColor: Colors.grey[200],
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Center(
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });

    if (result == true) {
      return await openAppSettings();
    } else {
      return false;
    }
  }
}
