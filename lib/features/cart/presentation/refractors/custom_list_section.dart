import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/core.dart';

class CustomListSection extends StatelessWidget {
  const CustomListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 10,
        separatorBuilder: (context, index) {
          return Container(
            color: AppColors.seperatorLight,
            child: 5.verticalSpace,
          );
        },
        itemBuilder: (context, index) {
          return SizedBox(
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 1.h),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: 150.w,
                          height: 150.h,
                          child: Image.asset(AppImages.pngMobile2),
                        ),
                      ),
                      10.horizontalSpace,
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "\$799.0",
                              style: RobotoPalette.fPrimaryTextLight_16_700,
                            ),
                            5.verticalSpace,
                            Text(
                              "iPhone 13 Pro Max(15th Gen) - 256 gb Midnight Black",
                              style: RobotoPalette.fPrimaryTextLight_16_400,
                            ),
                            10.verticalSpace,
                            Row(
                              children: [
                                Text("Sub Total: ",
                                    style:
                                        RobotoPalette.fPrimaryTextLight_14_700),
                                5.horizontalSpace,
                                Text("\$799.0",
                                    style:
                                        RobotoPalette.fPrimaryTextLight_14_400)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 45.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.black,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(Icons.remove),
                          ),
                          10.horizontalSpace,
                          Text("1",style: RobotoPalette.fPrimaryTextLight_14_700,),
                          10.horizontalSpace,
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(Icons.add),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                15.verticalSpace,
                Container(
                  color: AppColors.strokeLight,
                  height: 1.h,
                  width: double.maxFinite,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20.h, horizontal: 20.w),
                          child: const Center(
                            child: Text(Strings.removeItem),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: AppColors.strokeLight,
                      width: 1.w,
                      height: 55.h,
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20.h, horizontal: 20.w),
                          child: const Center(
                            child: Text(Strings.moveToWishList),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
