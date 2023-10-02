part of routes;

abstract class AppPages {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(
        name: _Paths.splash,
        page: () => const SplashScreen(),
        transition: Transition.fadeIn,
        binding: SplashBinding()),
    GetPage(
      name: _Paths.login,
      page: () => const LoginScreen(),
      transition: Transition.fadeIn,
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomeScreen(),
      transition: Transition.fadeIn,
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.profile,
      page: () => const ProfileScreen(),
      transition: Transition.fadeIn,
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.resource,
      page: () => const ResourceScreen(),
      transition: Transition.fadeIn,
      binding: ResourceBinding(),
    ),
    GetPage(
      name: _Paths.faq,
      page: () => const FaqScreen(),
      transition: Transition.fadeIn,
      binding: FaqBinding(),
    ),
    GetPage(
      name: _Paths.support,
      page: () => const SupportScreen(),
      transition: Transition.fadeIn,
      binding: SupportBinding(),
    ),
    GetPage(
      name: _Paths.userguide,
      page: () => const UserGuideScreen(),
      transition: Transition.fadeIn,
      binding: UserGuideBinding(),
    ),
    GetPage(
      name: _Paths.trainerguide,
      page: () => const TrainerGuideScreen(),
      transition: Transition.fadeIn,
      binding: TrainerGuideBinding(),
    ),
    GetPage(
      name: _Paths.mycourse,
      page: () => const MyCourseScreen(),
      transition: Transition.fadeIn,
      binding: MycourseBinding(),
    ),
    GetPage(
      name: _Paths.allcourse,
      page: () => const AllCourseScreen(),
      transition: Transition.fadeIn,
      binding: AllcourseBinding(),
    ),
    GetPage(
      name: _Paths.mycoursedetails,
      page: () => CourseDetailsScreen(
        courseid: Get.arguments,
      ),
      transition: Transition.fadeIn,
      binding: CourseDetailsBinding(),
    ),
    GetPage(
      name: _Paths.allcoursedetails,
      page: () => AllCourseDetailsScreen(
        courseid: Get.arguments,
      ),
      transition: Transition.fadeIn,
      binding: AllCourseDetailsBinding(),
    ),
    GetPage(
      name: _Paths.coursemodule,
      page: () => CourseModuleScreen(
        courseid: Get.arguments,
      ),
      transition: Transition.fadeIn,
      binding: CourseModuleBinding(),
    ),
    GetPage(
      name: _Paths.videoscreen,
      page: () => VideosScreen(
        coursemodule: Get.arguments['coursemodule'],
        module: Get.arguments['module'],
        quizmodule: Get.arguments['quizmodule'],
        index: Get.arguments['index'],
        subindex: Get.arguments['subindex'],
      ),
      transition: Transition.fadeIn,
      binding: VideoBinding(),
    ),
    GetPage(
      name: _Paths.pdfscreen,
      page: () => PdfScreen(
        coursemodule: Get.arguments['coursemodule'],
        module: Get.arguments['module'],
        quizmodule: Get.arguments['quizmodule'],
        index: Get.arguments['index'],
        subindex: Get.arguments['subindex'],
      ),
      transition: Transition.fadeIn,
      binding: PdfBinding(),
    ),
    GetPage(
      name: _Paths.pptscreen,
      page: () => PptScreen(
        coursemodule: Get.arguments['coursemodule'],
        module: Get.arguments['module'],
        quizmodule: Get.arguments['quizmodule'],
        index: Get.arguments['index'],
        subindex: Get.arguments['subindex'],
      ),
      transition: Transition.fadeIn,
      binding: PptBinding(),
    ),
    GetPage(
      name: _Paths.quizscreen,
      page: () => QuizScreen(
        coursemodule: Get.arguments['coursemodule'],
        index: Get.arguments['index'],
      ),
      transition: Transition.fadeIn,
      binding: QuizBinding(),
    ),
    GetPage(
      name: _Paths.certificatescreen,
      page: () => const CertificateScreen(),
      transition: Transition.fadeIn,
      binding: CertificateBinding(),
    ),
    GetPage(
      name: _Paths.reviewquiz,
      page: () => ReviewQuizScreen(
        quizresult: Get.arguments,
      ),
      transition: Transition.fadeIn,
      binding: ReviewQuizBinding(),
    ),
  ];
}
