import 'package:ecomm_mobile/core/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.bodyBgLight,
      width: 225.w,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              children: [
                Container(
                  color: AppColors.seperatorLight,
                  width: double.maxFinite,
                  height: 1.h,
                ),
                5.verticalSpace,
                ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    separatorBuilder: (context, index) {
                      return 10.verticalSpace;
                    },
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: const Text("Addresses"),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
