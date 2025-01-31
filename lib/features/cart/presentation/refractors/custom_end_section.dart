import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/primary_button.dart';
import '../../../../core/core.dart';
import '../widgets/custom_text_form.dart';

class CustomEndSection extends StatelessWidget {
  CustomEndSection({super.key});
  final emailController = TextEditingController();

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
              Row(
                children: [
                  Expanded(
                    child: CustomTextForm(
                        controller: emailController, hintText: ""),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 80.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                          color: AppColors.primaryTextLight,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4.r),
                              bottomRight: Radius.circular(4.r))),
                      child: Center(
                          child: Text(
                        "APPLY",
                        style: RobotoPalette.fBodyBgLight_14_700,
                      )),
                    ),
                  )
                ],
              ),
              10.verticalSpace,
              Container(
                  color: AppColors.cardBgLight,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Summary",
                        style: RobotoPalette.fPrimaryTextLight_20_700,
                      ),
                      10.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total",
                              textAlign: TextAlign.left,
                              style: RobotoPalette.fPrimaryTextLight_14_400),
                          Text("\$ 1097.00",
                              textAlign: TextAlign.end,
                              style: RobotoPalette.fPrimaryTextLight_14_400)
                        ],
                      ),
                      5.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Shipping Cost",
                              textAlign: TextAlign.left,
                              style: RobotoPalette.fPrimaryTextLight_14_400),
                          Text("\$ 16.00",
                              textAlign: TextAlign.end,
                              style: RobotoPalette.fPrimaryTextLight_14_400)
                        ],
                      ),
                      5.verticalSpace,
                      Container(
                        color: AppColors.strokeLight,
                        height: 1.h,
                        width: double.maxFinite,
                      ),
                      5.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Grand Total",
                              textAlign: TextAlign.left,
                              style: RobotoPalette.fPrimaryTextLight_16_700),
                          Text("\$ 1115.00",
                              textAlign: TextAlign.end,
                              style: RobotoPalette.fPrimaryTextLight_16_700)
                        ],
                      )
                    ],
                  )),
              10.verticalSpace,
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
