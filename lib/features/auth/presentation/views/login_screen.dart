import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/core.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            Text("I have forgotten my password"),
            16.verticalSpace,
            
            GestureDetector(
              onTap:(){

              },
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h),
                color: AppColors.primaryColor,
                child: Text("LOGIN",style: TextStyle(color: Colors.white),),
              ),
            ),
            16.verticalSpace,
            const CommonDividerWidget(), 
            30.verticalSpace,
            const SocialIconWidget(),
            50.verticalSpace,
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account yet?"),
                Text(" Sign-up"),
                Text("now"),
              ],
            )



          ],
        ),
      ),
    );
  }
}