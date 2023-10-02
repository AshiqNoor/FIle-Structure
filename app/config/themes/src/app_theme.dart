import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:who_e_learning/app/utils/helper/helper_library.dart';

import '../../constants/constants_library.dart';

//  final controller = Get.find<BaseControlle>();

class AppTheme {
  static ThemeData get basic => ThemeData(
        scaffoldBackgroundColor: theamCOLOR,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
        fontFamily: Font.openSans,

        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.grey[800])),
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
          backgroundColor: appbarCOLOR,
          elevation: 0,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true, hintStyle: hintText,
          fillColor: Colors.grey[200],
          // errorStyle: const TextStyle(fontSize: 14),
          errorMaxLines: 1,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(AppConstant.textFieldBorder),
          ),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(AppConstant.textFieldBorder),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.redAccent),
            borderRadius: BorderRadius.circular(AppConstant.textFieldBorder),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.redAccent),
            borderRadius: BorderRadius.circular(AppConstant.textFieldBorder),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonCOLOR,
            minimumSize: const Size(double.infinity, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConstant.buttonBorder).w,
            ),
          ),
        ),
      );

  // static ThemeData get dark => ThemeData();
}
