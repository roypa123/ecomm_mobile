import 'package:ecomm_mobile/core/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/common/widgets/common_app_bar.dart';
import '../refractors/grid_section.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyBgLight,
      appBar: const CommonAppBar(
        menuButton: false,
        title: Strings.wishlist,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "16 ${Strings.products}",
                  style: RobotoPalette.fPrimaryTextLight_14_600,
                ),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(AppVectors.svgListView),
                ),
              ],
            ),
            5.verticalSpace,
            const GridSection()
          ],
        ),
      ),
    );
  }
}
