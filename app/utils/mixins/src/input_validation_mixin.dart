part of mixins;

/// use this mixin for all form field
mixin ValidatorMixin {
  String? isValidEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppConstant.emailIsRequired.tr;
    }
    // else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
    //     .hasMatch(value)) {
    //   return "Invalid Email";
    else if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
        .hasMatch(value)) {
      return AppConstant.invalidHrmEmail;
    }
    return null;
  }

  String? validateLoginPass(String value) {
    if (value.isEmpty) {
      return AppConstant.passwordIsRequired.tr;
    } else {
      return null;
    }
  }

  String? validateRegisterdPass(String value) {
    if (value.isEmpty) {
      return 'Password is required.';
    } else if (value.length < 8) {
      return 'Password minimum character is 8.';
    } else if (value.length > 20) {
      return 'Password maximum character is 20.';
    } else if (!RegExp(r'[a-zA-Z]').hasMatch(value)) {
      return 'Password must include at least one lowercase letter.';
    } else if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must include at least one Uppercase letter.';
    } else if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must include at least one number.';
    } else if (!RegExp(r'[!@#$%^&*~]').hasMatch(value)) {
      return 'Password must include at least one special character.';
    } else {
      return null;
    }
  }
  // String? isValidPassword(String? value) {
  //   if (value == null || value.trim().isEmpty) {
  //     return AppConstant.passwordIsRequired.tr;
  //   } else if (value.length < 3) {
  //     return AppConstant.passwordMinimumCharacterIs3.tr;
  //   } else if (value.length > 20) {
  //     return AppConstant.passwordMaximumCharacterIs20.tr;
  //   }
  //   //  else if (!RegExp(r'[a-z]').hasMatch(value)) {
  //   //   return 'Password must include at least one lowercase letter';
  //   // } else if (!RegExp(r'[0-9]').hasMatch(value)) {
  //   //   return 'Password must include at least one number';
  //   // }
  //   else {
  //     return null;
  //   }
  // }

  String? isValidConfirmPassword(String? value, String? value2) {
    if (value2 == null || value2.trim().isEmpty) {
      return AppConstant.confirmPasswordIsRequired.tr;
    } else if (value != value2) {
      return AppConstant.passwordNnotMatch.tr;
    }
    return null;
  }

  String? isValidName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppConstant.fullNameIsRequired.tr;
    } else if (value.length < 3 || value.length > 20) {
      return AppConstant.fullNameMinimumCharacterIs3.tr;
    }
    return null;
  }

  String? isValidDivision(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppConstant.divisionIsRequired.tr;
    } else if (value == AppConstant.selectDivision) {
      return AppConstant.selectDivision;
    }
    return null;
  }

  String? isValidDesignation(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppConstant.designationIsRequired.tr;
    } else if (value.length < 3) {
      return AppConstant.designationMinimumCharacterIs3.tr;
    }
    return null;
  }

  String? isValidDesignationBox(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppConstant.designationIsRequired.tr;
    } else if (value == "Select Designation") {
      return "Select Designation";
    }
    return null;
  }

  String? isValidGender(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppConstant.genderIsRequired.tr;
    } else if (value == AppConstant.selectGender.tr) {
      return AppConstant.selectGender.tr;
    }
    return null;
  }

  String? isValidDistrict(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppConstant.districtIsRequired.tr;
    } else if (value == AppConstant.selectDistrict) {
      return AppConstant.selectDistrict;
    }
    return null;
  }

  String? isValidUpazila(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppConstant.upazillaIsRequired.tr;
    } else if (value == AppConstant.selectUpazila) {
      return AppConstant.selectUpazila;
    }
    return null;
  }

  String? isValidOrganization(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppConstant.organizationIsRequired.tr;
    } else if (value.length < 3) {
      return AppConstant.organizationMinimumCharacterIs3.tr;
    }
    return null;
  }

  String? isValidHRM(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppConstant.hRMEmailIsRequired.tr;
    } else if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
        .hasMatch(value)) {
      return AppConstant.invalidHrmEmail.tr;
    }
    return null;
  }

  String? isValidAge(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppConstant.ageIsRequired.tr;
    } else if (!RegExp("^[0-9]").hasMatch(value)) {
      return AppConstant.ageMustIncludeNumber.tr;
    }
    return null;
  }

  String? isValidCenter(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppConstant.centerIsRequired.tr;
    } else if (value == AppConstant.selectCenter) {
      return AppConstant.selectCenter;
    }
    return null;
  }

  String? isValidPhoneNo(String? value) {
    if (value!.isEmpty) {
      return AppConstant.phoneNoIsRequired.tr;
    } else {
      RegExp regExp = RegExp("^(?:\\+88|88)?(01[3-9]\\d{8})");
      if (value.length < 11 || value.length > 14) {
        return AppConstant.phoneNoAtLeast11Character.tr;
      } else if (!regExp.hasMatch(value)) {
        return AppConstant.pleaseEnterValidMobileNumber.tr;
      } else {
        return null;
      }
    }
  }
}
