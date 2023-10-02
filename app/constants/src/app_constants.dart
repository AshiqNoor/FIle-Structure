part of constants;

class AppConstant {
  static const urlFirstPart =
      "https://view.officeapps.live.com/op/embed.aspx?src=";
  // "https://view.officeapps.live.com/op/view.aspx?src=";
  static const urlLastPart = "&embedded=true";
  // "&wdSlideId=456&wdModeSwitchTime=1671605130378";
  /// ********Language**************** */
  static const english = Locale('en', 'US');
  static const bangla = Locale('bn', 'BD');

  /// *********shared prf Const token********* */
  static const profileKey = "profile_details";
  static const loginKey = "login_details";
  static const token = "token_details";
  static const guestDetails = "guest_details";
  static const dependancyKey = "app_dependancy";
  static const languageKey = "app_language";

  /// ************App Const Size*********** */
  static const timeOutDuration = 120;
  static const homeGridBorder = 15.0;
  static const cardBorder = 10.0;
  static const profileCardBorder = 5.0;
  static const buttonBorder = 5.0;
  static const textFieldBorder = 5.0;
  static const dialougBorder = 8.0;
  static const quizCardBorder = 5.0;

  /// ********App Const Toast Message********** */
  static const warning = "Warning";
  static const success = "Success";
  static const courseComplete = "Course complete";
  static const pleaseInputValidData = "Please input valid data";
  static const somethingWentWrong = "Something Went Wrong";
  static const youHaveToCompletePreviousModule =
      "You have to complete previous module";
  static const youHaveToCompletePreviousSubModule =
      "You have to complete previous sub module";
  static const youHaveToCompleteTheModule = "You have to complete the module";
  static const selectYourCenter = "Select your Center";
  static const noDataFound = "No Data Found";

  /// ****************App Const Button Text****************** */
  static const ok = "OK";
  static const next = "Next";
  static const previous = "Previous";
  static const submit = "Submit";
  static const confirm = "Confirm";
  static const continueText = "Continue";
  static const loginText = "Login";
  static const guestText = "Guest";
  static const guestUserText = "Guest User";
  static const thisAccessIsNotAvailableForGuestUsers =
      "This access is not available for guest users";
  static const registrationText = "Registration";
  static const enterCourse = "Enter Course";
  static const nextModuleUnlocked = "Next Module Unlocked >>";
  static const retake = "Retake";
  static const markSheet = "Mark Sheet";

  static const previewMarkSheet = "Preview Mark Sheet";
  static const bigCenter =
      "Bangabandhu Academy for Poverty Alleviation and Rural Development (BAPARD), Gopalganj";

  /// ****************App Const Hint Text****************** */
  static const hRMEmail = "HRM Email";
  static const providerId = "Provider Id";
  static const password = "Password";
  static const confirmPassword = "Confirm password";
  static const fullName = "Full Name";
  static const phoneNumber = "Phone Number";
  static const organizationName = "Organization Name";
  static const selectGender = "Select Gender";
  static const selectCenter = "Select Center";
  static const enterYourPassword = "Enter your password";
  static const designation = "Designation";
  static const age = "Age";
  static const newPassword = "New Password";
  static const oldPassword = "Old Password";
  static const version = "App Version - V0.0.1";

  /// ****************App Const Profile Text****************** */
  static const address = "Address";
  static const name = "Name";
  static const gender = "Gender";
  static const hRMId = "HRM Id";
  static const designationId = "Designation Id";
  static const organization = "Organization";
  static const profileText = "Profile";
  static const division = "Division";
  static const district = "District";
  static const upazila = "Upazila";

  /// ****************App Validation Const Text****************** */
  static const confirmPasswordIsRequired = "Confirm Password is required";
  static const passwordNnotMatch = "Password not Match";
  static const passwordIsRequired = "Password is required";
  static const passwordMinimumCharacterIs3 = "Password minimum character is 3";
  static const passwordMaximumCharacterIs20 =
      "Password maximum character is 20";
  static const fullNameIsRequired = "Full Name is required";
  static const fullNameMinimumCharacterIs3 = "Full Name minimum character is 3";
  static const divisionIsRequired = "Division is required";
  static const designationIsRequired = "Designation is required";
  static const designationMinimumCharacterIs3 =
      "Designation minimum character is 3";
  static const genderIsRequired = "Gender is required";
  static const centerIsRequired = "Center Is Required";
  static const selecGender = "Select Gender";
  static const districtIsRequired = "District is required";
  static const upazillaIsRequired = "Upazilla is required";
  static const organizationIsRequired = "Organization is required";
  static const organizationMinimumCharacterIs3 =
      "Organization minimum character is 3";
  static const ageIsRequired = "Age is required";
  static const ageMustIncludeNumber = "Age must include number";
  static const phoneNoIsRequired = "Phone No is required";
  static const pleaseEnterValidMobileNumber =
      "Please enter valid mobile number";
  static const phoneNoAtLeast11Character = "Phone no at least 11 character";
  static const emailIsRequired = "Email is required";
  static const hRMEmailIsRequired = "HRM Email is required";
  static const invalidHrmEmail = "Invalid HRM Email";

  /// ****************App Const Text****************** */
  static const nA = "N/A";
  static const language = "Language";
  static const developmentPartner = "Development partner";
  static const account = "Account";
  static const logout = "Logout";
  static const cancel = "Cancel";
  static const areYouSure = "Are you sure, that you want to logout?";
  static const courseCompleted = "Course Completed";
  static const enrollCourse = "Enroll Course";
  static const goToMyCourse = "Go to My Course";
  static const enrollStudent = "Enroll Student";
  static const noCourseAvailable = "No Course Available";
  static const noCourseEnrolled = "No Course Enrolled";
  static const noCertificateAchived = "No Certificate Achieved";
  static const noCourseModuleFound = "No Course Module Found";
  static const selectUpazila = "<Select Upazila>";
  static const selectDistrict = "<Select District>";
  static const selectDivision = "<Select Division>";
  static const duration = "Duration";
  static const lesson = "Lesson";
  static const description = "Description";
  static const readLess = "<<Read Less";
  static const readMore = "Read More>>";
  static const learningObjectives = "Learning Objectives";
  static const certificate = "Certificate";
  static const downloadCertificate = "Download Certificate";
  static const youAlreadyPassedThisQuiz = "You already passed this quiz";
  static const yourResult = "Your result";
  static const quizMark = "Quiz Mark";
  static const courseModule = "Course Module";
  static const frequentlyAskedQuestions = "Frequently Asked Questions";
  static const allCourse = "Courses";
  static const cHCPLlearningPlatform = "CHCP e-learning platform";
  static const myCourses = "My Courses";
  static const resource = "Resource";
  static const support = "Support";
  static const typeYourDesignation = "Type Your Designation";
  static const alreadyHaveAnAccount = "Already have an account ? ";
  static const dontHaveAnAccount = "Don't have an account ? ";
  static const createNewAccount = "Create new account";
  static const courseProgress = "Course Progress";
  static const certificateName = "certificate.pdf";
  static const changePassword = "Change Password";
  static const aboutUs = "About Us";
  static const updateYourProfile = "Update Your Profile";
  static const changeYourPassword = "Change Your Password";
  static const choseYourCorrectAnswer = "Chose your correct answer";
  static const quizHasBeenSubmitted = "Quiz Has Been Submitted";
  static const takeTheQuizAgain = "Take the quiz again";
  static const thisIsTheLastModule = "This is the last module";
  static const pleaseWait = "Please wait...";
  static const quiz = "Quiz";
  static const questions = "Questions";
  static const outof = "out of";
  static const fAQ = "FAQ";
  static const userGuide = "User Guide";
  static const trainerGuide = "Trainer Guide";
}
