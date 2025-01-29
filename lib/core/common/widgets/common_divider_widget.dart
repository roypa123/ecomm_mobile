import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core.dart';

class CommonDividerWidget extends StatelessWidget {
  const CommonDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: double.maxFinite,
              height: 1.h,
              color: AppColors.fd5d5df,
            );
  }
}