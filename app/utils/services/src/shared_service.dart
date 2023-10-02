part of services;

class SharedService {
  static Future<bool> isExistProfile() async {
    var isExistProfile = await SharedPreferences.getInstance().then((prefs) {
      return prefs.containsKey(AppConstant.profileKey);
    });
    return isExistProfile;
  }

  static Future<void> setProfileDetails(ProfileResModel model) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(AppConstant.profileKey, json.encode(model.toJson()));
  }

  static Future<ProfileResModel?> profileDetails() async {
    var prefs = await SharedPreferences.getInstance();
    var iskeyExist = prefs.containsKey(AppConstant.profileKey);
    if (iskeyExist) {
      var cachedToken = prefs.getString(AppConstant.profileKey);
      return profileResModelFromJson(cachedToken.toString());
    }
    return null;
  }

  static Future<bool> isLoggedIn() async {
    var iskeyExist = await SharedPreferences.getInstance().then((prefs) {
      return prefs.containsKey(AppConstant.token);
    });
    return iskeyExist;
  }

  static Future<void> setTokenDetails(TokenModel model) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(AppConstant.token, json.encode(model.toJson()));
  }

  static Future<TokenModel?> tokenDetails() async {
    var prefs = await SharedPreferences.getInstance();
    var iskeyExist = prefs.containsKey(AppConstant.token);
    if (iskeyExist) {
      var cachedToken = prefs.getString(AppConstant.token);
      return tokenModelFromJson(cachedToken.toString());
    }
    return null;
  }

  // static Future<void> setGuestDetails(GuestResModel model) async {
  //   var prefs = await SharedPreferences.getInstance();
  //   prefs.setString(AppConstant.guestDetails, json.encode(model.toJson()));
  // }

  // static Future<GuestResModel?> guestDetails() async {
  //   var prefs = await SharedPreferences.getInstance();
  //   var iskeyExist = prefs.containsKey(AppConstant.guestDetails);
  //   if (iskeyExist) {
  //     var guestDetails = prefs.getString(AppConstant.guestDetails);
  //     return guestResModelFromJson(guestDetails.toString());
  //   }
  //   return null;
  // }

  static Future<bool> isExistDependancy() async {
    var isExistProfile = await SharedPreferences.getInstance().then((prefs) {
      return prefs.containsKey(AppConstant.dependancyKey);
    });
    return isExistProfile;
  }

  static Future<void> setDependancyDetails(DependancyResModel model) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(AppConstant.dependancyKey, json.encode(model.toJson()));
  }

  static Future<DependancyResModel?> dependancyDetails() async {
    var prefs = await SharedPreferences.getInstance();
    var iskeyExist = prefs.containsKey(AppConstant.dependancyKey);
    if (iskeyExist) {
      var cachedDependancy = prefs.getString(AppConstant.dependancyKey);
      return dependancyResModelFromJson(cachedDependancy.toString());
    }
    return null;
  }

  // static Future<void> setLanguage(String key) async {
  //   var prefs = await SharedPreferences.getInstance();
  //   prefs.setString(AppConstant.language, key);
  // }

  // static Future<String?> languageDetails() async {
  //   var prefs = await SharedPreferences.getInstance();
  //   var iskeyExist = prefs.containsKey(AppConstant.language);
  //   if (iskeyExist) {
  //     var cachedDependancy = prefs.getString(AppConstant.language);
  //     return cachedDependancy.toString();
  //   }
  //   return null;
  // }
  static Future<void> logOut() async {
    var iskeyExists = await SharedPreferences.getInstance();
    // await iskeyExists.clear();
    // DefaultCacheManager().emptyCache();
    // iskeyExists.reload();
    // imageCache.clear();
    await iskeyExists.remove(AppConstant.token);
    await iskeyExists.remove(AppConstant.guestDetails);
    await iskeyExists.remove(AppConstant.loginKey);
    await iskeyExists.remove(AppConstant.dependancyKey);
    await iskeyExists.remove(AppConstant.profileKey);
    Get.offNamed(Routes.login);
  }
}
