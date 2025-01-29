import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/common/widgets/primary_button.dart';
import '../../../../core/core.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyBgLight,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppVectors.svgLogo),
            25.verticalSpace,
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  Strings.iHaveForgottenMyPassword,
                  style: RobotoPalette.fLink_14_400,
                ),
              ),
            ),
            16.verticalSpace,
            const PrimaryButton(),
            30.verticalSpace,
            const CommonDividerWidget(),
            30.verticalSpace,
            const SocialIconWidget(),
            50.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.dontHaveAnAccount,
                  style: RobotoPalette.fPrimaryTextLight_14_400,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    Strings.signUp,
                    style: RobotoPalette.fLink_14_400,
                  ),
                ),
                Text(
                  Strings.now,
                  style: RobotoPalette.fPrimaryTextLight_14_400,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
