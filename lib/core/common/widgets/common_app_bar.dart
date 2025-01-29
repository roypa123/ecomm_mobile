import 'package:ecomm_mobile/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool? leadingButton;
  final bool? trailingButton;
  final Function? profileDeleteFunction;
  const CommonAppBar(
      {super.key,
      this.title,
      this.leadingButton,
      this.trailingButton,
      this.profileDeleteFunction});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        title ?? "",
      ),
      centerTitle: false,
      leadingWidth: 65.w,
      leading: (leadingButton ?? false)
          ? GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: EdgeInsets.all(12.w),
                width: 40.w,
                height: 40.h,
                child: SvgPicture.asset(AppVectors.svgMenu),
              ),
            )
          : null,
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8.w),
            width: 40.w,
            height: 40.h,
            child: SvgPicture.asset(AppVectors.svgBell),
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
          color: Colors.black,
          height: 2.0,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55.h);
}
