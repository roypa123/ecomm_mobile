import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core.dart';



class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool? leadingButton;
  final bool? trailingButton;
  final Function? profileDeleteFunction;
  const CommonAppBar(
      {super.key, this.title, this.leadingButton, this.trailingButton, this.profileDeleteFunction});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          title ?? "",
          style: PlusJakartaSansPalette.fWhite_18_600,
        ),
        centerTitle: true,
        leadingWidth: 65.w,
        leading: (leadingButton ?? true)
            ? GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  margin: EdgeInsets.fromLTRB(1.w, 10.w, 0, 1.w),
                  padding: EdgeInsets.all(12.w),
                  width: 70.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    AppVectors.svgBackarrow,
                    height: 10.h,
                    width: 10.w,
                  ),
                ),
              )
            : null,
        actions: [
          if (trailingButton ?? false)
            GestureDetector(
              //onTap: () => profileDeleteModalSheet(context, profileDeleteFunction),
              onTap: (){},
              child: Container(
                margin: EdgeInsets.fromLTRB(1.w, 10.w, 0, 1.w),
                padding: EdgeInsets.all(12.w),
                width: 70.w,
                height: 70.h,
                child: SvgPicture.asset(
                  AppVectors.svgTrash,
                  height: 10.h,
                  width: 10.w,
                ),
              ),
            )
        ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(75.h);
}
