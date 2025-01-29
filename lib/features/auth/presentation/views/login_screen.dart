import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/common/widgets/common_text_form.dart';
import '../../../../core/common/widgets/primary_button.dart';
import '../../../../core/core.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      backgroundColor: AppColors.bodyBgLight,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(child: SizedBox()),
            SvgPicture.asset(AppVectors.svgLogo),
            25.verticalSpace,
            CommonTextForm(
              controller: emailController,
              hintText: "Enter email",
              type: TextInputFields.email,
            ),
            5.verticalSpace,
            CommonTextForm(
              controller: passwordController,
              hintText: "Enter password",
              type: TextInputFields.password,
            ),
            5.verticalSpace,
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
            const Expanded(child: SizedBox()),
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
