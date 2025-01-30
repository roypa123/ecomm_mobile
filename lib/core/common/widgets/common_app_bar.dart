import 'package:ecomm_mobile/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool? menuButton;
  final bool? trailingButton;
  final Function? profileDeleteFunction;
  const CommonAppBar(
      {super.key,
      this.title,
      this.menuButton,
      this.trailingButton,
      this.profileDeleteFunction});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        title ?? "",
        style: RobotoPalette.fPrimaryTextLight_16_400,
      ),
      centerTitle: false,
      leadingWidth: 65.w,
      leading: (menuButton ?? false)
          ? GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: EdgeInsets.all(12.w),
                width: 40.w,
                height: 40.h,
                child: SvgPicture.asset(AppVectors.svgMenu),
              ),
            )
          : GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: EdgeInsets.all(12.w),
                width: 40.w,
                height: 40.h,
                child: const Icon(Icons.arrow_back),
              ),
            ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8.w),
            width: 40.w,
            height: 40.h,
            child: Stack(
              children: [
                SizedBox(
                  width: 40.w,
                  height: 40.h,
                  child: SvgPicture.asset(AppVectors.svgBell),
                ),
                Positioned(
                  top: 0.h,
                  right: 1.w,
                  child: Container(
                    width: 12.w,
                    height: 12.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.red,
                    ),
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 7.sp,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8.w),
            width: 40.w,
            height: 40.h,
            child: SvgPicture.asset(AppVectors.svgSearch),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8.w),
            width: 40.w,
            height: 40.h,
            child: SvgPicture.asset(AppVectors.svgWishlist),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8.w),
            width: 40.w,
            height: 40.h,
            child: SvgPicture.asset(AppVectors.svgCart),
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: preferredSize,
        child: Container(
          height: 1.0,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.5),
                blurRadius: 0.1,
                offset: const Offset(0, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55.h);
}
