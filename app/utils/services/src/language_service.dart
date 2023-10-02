// part of services;

// class LanguageService extends BaseControlle with GetxServiceMixin {
//   // final bangla = const Locale("bn", "BD");
//   // final english = const Locale("en", "US");

//   @override
//   Future<void> onInit() async {
//     super.onInit();
//     await initLanguage();
//   }

//   Future<void> initLanguage() async {
//     var language = await SharedService.languageDetails();
//     selectedLanguage.value = language ?? "en";
//     isChange.value = !isChange.value;
//     if (isChange.value) {
//       selectedLanguage.value = "en";
//     } else {
//       selectedLanguage.value = "ba";
//     }
//     selectedLanguage.value == "en"
//         ? changeLanguage(bangla)
//         : changeLanguage(english);
//   }

//   Future<void> changeLanguage(Locale locale) async {
//     Get.updateLocale(locale);
//     selectedLanguage.value = locale.languageCode;
//     await SharedService.setLanguage(selectedLanguage.value.toString());
//   }
// }
