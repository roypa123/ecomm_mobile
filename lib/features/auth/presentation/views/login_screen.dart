import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/common/widgets/common_text_form.dart';
import '../../../../core/common/widgets/primary_button.dart';
import '../../../../core/core.dart';
import '../bloc/auth_bloc.dart';

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
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is LogInNavigate) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            RouteConstants.routeSignUpScreen,
            (route) => false,
          );
        } else if (state is AuthError) {
          showToast(msg: state.message.toString(), isError: true);
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.bodyBgLight,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          width: double.maxFinite,
          height: double.maxFinite,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(child: SizedBox()),
                SvgPicture.asset(AppVectors.svgLogo),
                25.verticalSpace,
                CommonTextForm(
                  controller: emailController,
                  hintText: Strings.enterEmail,
                  type: TextInputFields.email,
                ),
                5.verticalSpace,
                CommonTextForm(
                  controller: passwordController,
                  hintText: Strings.enterPasssword,
                  type: TextInputFields.loginPassword,
                ),
                5.verticalSpace,
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                     
                    },
                    child: Text(
                      Strings.iHaveForgottenMyPassword,
                      style: RobotoPalette.fLink_14_400,
                    ),
                  ),
                ),
                16.verticalSpace,
                PrimaryButton(
                  title: Strings.logIn,
                  onTap: () {
                     log("signup");
                      if (formKey.currentState!.validate()) {
                        context.read<AuthBloc>().add(
                              SignInEvent(
                                email: emailController.text.trim(),
                                password: passwordController.text.trim(),
                              ),
                            );
                      }
                  },
                ),
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
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          RouteConstants.routeSignUpScreen,
                          (route) => false,
                        );
                      },
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
        ),
      ),
    );
  }
}
