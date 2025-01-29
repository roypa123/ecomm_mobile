import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.title, this.onTap});

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        decoration: BoxDecoration(
          color: AppColors.primaryTextLight,
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Center(
          child: Text(
            title,
            style: RobotoPalette.fBodyBgLight_14_400,
          ),
        ),
      ),
    );
  }
}
