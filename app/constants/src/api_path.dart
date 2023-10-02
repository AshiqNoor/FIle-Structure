part of constants;

class ApiPath {
  //**********  Base API*******/
  ///*******************dev******************/
  // static const _baseUrl = "https://whodev.rultest.com/api/v1";

  ///*****************staging****************/
  // static const _baseUrl = "https://who.elearning.rultest.com/api/v1";

  ///****************production******************/
  static const _baseUrl = "https://chcpelearning.dghs.gov.bd/api/v1";

  //**********  Credentials API*******/
  static const login = "$_baseUrl/login";
  static const register = "$_baseUrl/registration";
  static const guest = "$_baseUrl/guest/login";

  //**********  Accounts API*******/
  static const profile = "$_baseUrl/user/profile";
  static const updatepassword = "$_baseUrl/user/change_password";
  static const editprofile = "$_baseUrl/user/profile/update";
  static const photoupdate = "$_baseUrl/user/update-profile-photo";

  //**********  App Dependancy API*******/
  static const dependancy = "$_baseUrl/required-for-registration";

  //**********  Courses API*******/
  static const allcourse = "$_baseUrl/courses/all";
  static const allcoursedetails = "$_baseUrl/course/public_details/";
  static const mycourse = "$_baseUrl/courses/my";
  static const mycoursedetails = "$_baseUrl/course/details/";
  static const coursemodule = "$_baseUrl/course/course_with_module_details/";
  static const enroll = "$_baseUrl/course-enrollment";

  //**********  Courses Guest API*******/
  static const allcourseGuest = "$_baseUrl/guest/courses/all";
  static const allcoursedetailsGuest = "$_baseUrl/guest/course/details/";
  static const coursemoduleGuest =
      "$_baseUrl/guest/course/course_with_module_details/";
  static const faqGuest = "$_baseUrl/guest/course/faq";
  static const userguideGuest = "$_baseUrl/guest/course/userGuide";
  static const protectedresourceGuest =
      "$_baseUrl/guest/course/protected_resource";
  //**********  Courses Test API*******/
  static const testcoursemodule =
      "$_baseUrl/test/course/course_with_module_details/";

  //**********  Resource API*******/
  static const faq = "$_baseUrl/course/faq";
  static const userguide = "$_baseUrl/course/userGuide";
  static const protectedresource = "$_baseUrl/course/protected_resource";

  //**********  Unlock SubModule API*******/
  static const unlocksubmodule = "$_baseUrl/course/";

  //**********  Result API*******/
  static const quizresult = "$_baseUrl/course/";

  //**********  Quiz Submission API*******/
  static const quizsubmit = "$_baseUrl/course/";

  //**********  Certificate API*******/
  static const certificatelist = "$_baseUrl/courses_for_certificate/list";
  static const getcertificate = "$_baseUrl/certificate_info/course/";
}
