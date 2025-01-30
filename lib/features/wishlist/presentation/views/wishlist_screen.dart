

import 'package:ecomm_mobile/core/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/common_app_bar.dart';

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
      appBar:const CommonAppBar(
        menuButton: false,
        title: "Wishlist",
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("16 Products")
              ],
            )

          ],
        ),
      ),
    );
  }
}