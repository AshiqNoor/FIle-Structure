part of constants;

class Font {
  static const _path = "assets/fonts";
  // static const roboto = "$_path/Roboto-Regular.ttf";
  // static const openSans = "$_path/OpenSans.ttf";
  // static const sutonnyMJ = "$_path/SutonnyMJ-Regular.ttf";
  static const blackChancery = "$_path/BlackChancery.ttf";
  static const timesNew = "$_path/timesbi.ttf";

  static const roboto = "Roboto";
  static const openSans = "OpenSans";
  static const sutonnyMJ = "SutonnyMJ";
  // static const blackChancery = "BlackChancery";
  // static const timesNew = "TimeNew";
}

class IconPath {
  static const _path = "assets/icons";
  static const languageActive = "$_path/translatebutton_active.png";
  static const languageInactive = "$_path/translatebutton_inactive.png";
  static const logout = "$_path/logout.png";
}

// abstract class ImageVectorConstant {
//   static const _folder = "assets/images/vector/";
//   // static const logout = "${_folder}logout.svg";
//   // static const language = "${_folder}language.svg";
// }

abstract class ImageRasterConstant {
  static const _folder = "assets/images/raster/";

  static const cbhclogo = "${_folder}cbhclogo.png";
  static const elearning = "${_folder}1024.png";
  static const cbhc = "${_folder}cbhc.png";
  static const demo = "${_folder}demo.webp";
  static const allcourse = "${_folder}allcourse.png";
  static const mycourse = "${_folder}mycourse.png";
  static const certificate = "${_folder}certificate.png";
  static const courseCertificate = "${_folder}download_certificate.jpg";
  static const resource = "${_folder}resource.png";
  static const support = "${_folder}support.png";
  static const bdlogo = "${_folder}bd_logo.png";
  static const who = "${_folder}who.png";
}

abstract class ImageLottieConstant {
  static const _folder = "assets/images/lottie/";

  static const ok = "${_folder}93373-success.json";
  static const pass = "${_folder}95088-success.json";
  static const fail = "${_folder}74713-order-fail.json";
}
