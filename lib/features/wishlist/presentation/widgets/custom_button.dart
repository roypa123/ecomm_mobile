import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/core.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: AppColors.primaryTextLight,
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            SvgPicture.asset(
              AppVectors.svgCart,
              // ignore: deprecated_member_use
              color: AppColors.white,
              width: 15.w,
              height: 15.w,
            ),
            5.horizontalSpace,
            Text(
              title,
              style: RobotoPalette.fBodyBgLight_14_400,
            ),
          ],
        ),
      ),
    );
  }
}
