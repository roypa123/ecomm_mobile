import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors.dart';



class DmSerifDisplayPalette {
  static const String dmSerifDisplayFamily = "DMSerifDisplay";

  /*<---24--->*/
  static TextStyle get fWhite_24_400 => TextStyle(
      fontFamily: dmSerifDisplayFamily,
      fontSize: 24.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.white);

/*<---26--->*/
  static TextStyle get ffefefe_26_400 => TextStyle(
      fontFamily: dmSerifDisplayFamily,
      fontSize: 26.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.ffefefe);

  /*<---32--->*/
  static TextStyle get fWhite_32_400 => TextStyle(
      fontFamily: dmSerifDisplayFamily,
      fontSize: 32.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.white);

  /*<---40--->*/
  static TextStyle get fdfdfdf_40_400 => TextStyle(
      fontFamily: dmSerifDisplayFamily,
      height: 1,
      fontSize: 40.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.fdfdfdf);
}