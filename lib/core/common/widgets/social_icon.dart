import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoblo/core/configs/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onTap;
  const SocialIcon({super.key, required this.imgUrl, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 9.w),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.faaa1ff, width: 0.5.w),
          borderRadius: BorderRadius.circular(6.r),
        ),
        padding: const EdgeInsets.all(12),
        height: 54.h,
        width: 54.w,
        child: SvgPicture.asset(
          imgUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
