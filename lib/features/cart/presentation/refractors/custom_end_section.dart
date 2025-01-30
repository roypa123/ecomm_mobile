import 'package:ecomm_mobile/core/common/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/primary_button.dart';
import '../../../../core/core.dart';

class CustomEndSection extends StatelessWidget {
  const CustomEndSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  Strings.discountCoupon,
                  style: RobotoPalette.fPrimaryTextLight_14_400,
                ),
              ),
              5.verticalSpace,
              // Row(
              //   children: [
              //     GestureDetector(
              //       onTap: () {},
              //       child: Container(
              //         decoration: BoxDecoration(
              //           color: AppColors.primaryTextLight,
              //           borderRadius: BorderRadius.circular(4.r),
              //         ),
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        ),
        Container(
          height: 1.h,
          width: double.maxFinite,
          color: AppColors.strokeLight,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: PrimaryButton(
            title: Strings.proceedToCheckout,
            onTap: () {},
          ),
        )
      ],
    );
  }
}
