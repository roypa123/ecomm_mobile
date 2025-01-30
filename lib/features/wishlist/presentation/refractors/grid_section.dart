import 'package:ecomm_mobile/core/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_button.dart';

class GridSection extends StatelessWidget {
  const GridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(10.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.52,
            crossAxisCount: 2,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 16.h,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.r),
                    child: Stack(
                      children: [
                        Image.asset(AppImages.pngMobile),
                        Positioned(
                          top: 10.h,
                          right: 10.w,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.w, vertical: 3.h),
                            width: 30.w,
                            height: 30.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.bodyBgLight,
                              border: Border.all(
                                color: AppColors.strokeLight,
                                width: 1,
                              ),
                            ),
                            child: Icon(
                              Icons.favorite,
                              color: AppColors.red,
                              size: 17.w,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Samsung s22 - 256 GB - Orchid green",
                    style: RobotoPalette.fPrimaryTextLight_14_400,
                  ),
                  5.verticalSpace,
                  Row(
                    children: [
                      Text("\$799.00",style: RobotoPalette.fPrimaryTextLight_14_700),
                      5.horizontalSpace,
                      Text("\$1000.00",style: RobotoPalette.fSecondaryText_14_400),
                    ],
                  ),
                  5.verticalSpace,
                  CustomButton(title: "Move to Cart",onTap: (){},)
                ],
              ),
            );
          }),
    );
  }
}
