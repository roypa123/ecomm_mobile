import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core.dart';

class RobotoPalette {
  static const String robotoFamily = "Roboto";

  /*<---12--->*/
  static TextStyle get fPrimaryTextLight_12_400 => TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryTextLight);

  /*<---14--->*/
  static TextStyle get fPrimaryTextLight_14_600 => TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryTextLight);

  static TextStyle get fPrimaryTextLight_14_700 => TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryTextLight);

  static TextStyle get fPrimaryTextLight_14_400 => TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryTextLight);

  static TextStyle get fSecondaryText_14_400 => TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.lineThrough, 
      decorationColor: AppColors.secondaryText,
      decorationThickness: 1.8.h,
      color: AppColors.secondaryText);

  static TextStyle get fBodyBgLight_14_400 => TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.bodyBgLight);

  static TextStyle get fLink_14_400 => TextStyle(
      fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColors.link);

/*<---16--->*/
  static TextStyle get fPrimaryTextLight_16_400 => TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryTextLight);

  static TextStyle get fPrimaryTextLight_16_700 => TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryTextLight);

/*<---20--->*/
  static TextStyle get fPrimaryTextLight_20_700 => TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryTextLight);
}
