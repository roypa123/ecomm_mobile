import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/core.dart';

class CustomTextForm extends StatelessWidget {
  final TextEditingController controller;
  final String? confirmText;
  final String hintText;
  final TextInputType? keyboardType;

  const CustomTextForm({
    super.key,
    this.keyboardType,
    this.confirmText,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
        style: RobotoPalette.fPrimaryTextLight_14_400,
        validator: (value) {
          return Validators.validateName(value);
        },
        decoration: InputDecoration(
          errorMaxLines: 4,
          isDense: true,
          hintText: hintText,
          filled: true,
          fillColor: AppColors.transparent,
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.r),
                bottomLeft: Radius.circular(5.r),
              ),
              borderSide: BorderSide(color: AppColors.bodyBgDark, width: 1.w)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.link, width: 1.w),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.r),
              bottomLeft: Radius.circular(5.r),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors.bodyBgDark.withOpacity(0.5), width: 1.w),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.r),
              bottomLeft: Radius.circular(5.r),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.bodyBgDark, width: 1.w),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.r),
              bottomLeft: Radius.circular(5.r),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.red, width: 1.w),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.r),
              bottomLeft: Radius.circular(5.r),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
