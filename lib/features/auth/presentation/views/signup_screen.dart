import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/common/widgets/common_text_form.dart';
import '../../../../core/common/widgets/primary_button.dart';
import '../../../../core/core.dart';
import '../bloc/auth_bloc.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final fullNameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColors.white,
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
                      controller: fullNameController,
                      hintText: Strings.enterFullName,
                      type: TextInputFields.name,
                    ),
                    5.verticalSpace,
                    CommonTextForm(
                      controller: emailController,
                      hintText: Strings.enterEmail,
                      type: TextInputFields.email,
                    ),
                    5.verticalSpace,
                    CommonTextForm(
                      controller: passwordController,
                      hintText: Strings.enterPasssword,
                      type: TextInputFields.password,
                    ),
                    5.verticalSpace,
                    CommonTextForm(
                      controller: confirmPasswordController,
                      hintText: Strings.enterConfirmPasssword,
                      type: TextInputFields.confirmPassword,
                    ),
                    16.verticalSpace,
                    PrimaryButton(
                      title: Strings.signUp,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          context.read<AuthBloc>().add(
                                SignUpEvent(
                                  fullName: fullNameController.text.trim(),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          RouteConstants.routeLoginScreen,
                          (route) => false,
                        );
                      },
                      child: Text(
                        Strings.logIn,
                        style: RobotoPalette.fLink_14_400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
