import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonIconWidget extends StatelessWidget {
  final String imgUrl;
  const CommonIconWidget({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54.w,
      margin: EdgeInsets.fromLTRB(1.w, 12.h, 1.w, 12.h),
      child: SvgPicture.asset(imgUrl,
          width: 16.w, height: 16.h, fit: BoxFit.contain),
    );
  }
}
