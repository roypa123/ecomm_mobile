import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/common_app_bar.dart';
import '../../../../core/core.dart';
import '../refractors/custom_end_section.dart';
import '../refractors/custom_list_section.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyBgLight,
      appBar: const CommonAppBar(
        menuButton: false,
        title: Strings.cart,
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 20.w),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "3 ${Strings.items}",
                  style: RobotoPalette.fPrimaryTextLight_14_600,
                ),
              ),
            ),
            5.verticalSpace,
            const CustomListSection(),
            Container(
              color: AppColors.seperatorLight,
              height: 5.h,
              width: double.maxFinite,
            ),
             CustomEndSection()
          ],
        ),
      ),
    );
  }
}
