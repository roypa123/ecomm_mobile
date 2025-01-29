import 'package:ecomm_mobile/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIconWidget extends StatelessWidget {
  const SocialIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      width: 40.w,
      height: 40.w,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor, 
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(AppVectors.svgGoogleLogo),
    );
  }
}
