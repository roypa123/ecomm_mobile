import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        decoration: BoxDecoration(
          color: AppColors.primaryTextLight,
          borderRadius: BorderRadius.circular(4.r), 
        ),
        child: Center(
          child: Text(
            "LOGIN",
            style: RobotoPalette.fBodyBgLight_14_400,
          ),
        ),
      ),
    );
  }
}
