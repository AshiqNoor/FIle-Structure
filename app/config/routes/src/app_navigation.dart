part of routes;

class Pages {
  static void goToLogin() => Get.offNamed(Routes.login);
  static void goToRegistration() => Get.offAllNamed(Routes.registration);
  static void goToHome() => Get.offAllNamed(Routes.home);
  static void goToProfile() => Get.toNamed(Routes.profile);
  static void goToResource() => Get.toNamed(Routes.resource);
  static void goToFaq() => Get.toNamed(Routes.faq);
  static void goToSupport() => Get.toNamed(Routes.support);
  static void goToVideoPage() => Get.toNamed(Routes.videoscreen);
  static void goToUserguide() => Get.toNamed(Routes.userguide);
  static void goToMycourse() => Get.toNamed(Routes.mycourse);
  static void goToMycourseFromAllCourse() => Get.offNamed(Routes.mycourse);
  static void goToMycourseFromAllCourseDetais() =>
      Get.offNamed(Routes.mycourse);
  static void goToAllCourse() => Get.toNamed(Routes.allcourse);
  static void goToPdfPage() => Get.toNamed(Routes.pdfscreen);
  static void goToPptPage() => Get.toNamed(Routes.pptscreen);
  static void goToCertificatePage() => Get.toNamed(Routes.certificatescreen);
}
