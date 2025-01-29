import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/core.dart';
import '../bloc/auth_bloc.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.white,
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
              width: double.maxFinite,
              height: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppVectors.svgLogo),
                  25.verticalSpace,




                  // ElevatedButton(
                  //   onPressed: () {
                  //     context.read<AuthBloc>().add(
                  //           const SignUpEvent(
                  //               email: "roypa81130@gmail.com",
                  //               password: "Aa@12345678",
                  //               fullName: "Roy P A"),
                  //         );
                  //   },
                  //   child: const Text("hello"),
                  // ),
                ],
              ),
            ),
          );
        });
  }
}
