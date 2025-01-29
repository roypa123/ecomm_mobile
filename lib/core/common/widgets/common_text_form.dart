import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core.dart';

class CommonTextForm extends StatelessWidget {
  final TextEditingController controller;
  final String? confirmText;
  final String hintText;
  final TextInputType? keyboardType;
  final Enum type;

  const CommonTextForm({
    super.key,
    this.keyboardType,
    this.confirmText,
    required this.controller,
    required this.hintText,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isObscured = ValueNotifier<bool>(false);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: ValueListenableBuilder<bool>(
          valueListenable: isObscured,
          builder: (context, isOb, child) {
            return TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: controller,
              style: RobotoPalette.fPrimaryTextLight_14_400,
              validator: (value) {
                if (type == TextInputFields.email) {
                  return Validators.validateEmail(value);
                }
                return null;
              },
              obscureText: type == TextInputFields.password,
              decoration: InputDecoration(
                errorMaxLines: 4,
                isDense: true,
                hintText: hintText,
                filled: true,
                fillColor: AppColors.transparent,
                // suffixIcon: type == TextInputFields.password ||
                //         type == TextInputFields.loginPassword
                //     ? GestureDetector(
                //         onTap: () {
                //           isObscured.value = !isObscured.value;
                //         },
                //         child: Padding(
                //             padding: const EdgeInsets.all(12.0),
                //             child: isOb
                //                 ? SvgPicture.asset(AppVectors.svgEyeclosed,
                //                     width: 16.w,
                //                     height: 16.h,
                //                     fit: BoxFit.contain)
                //                 : SvgPicture.asset(AppVectors.svgEyeopen,
                //                     width: 16.w,
                //                     height: 16.h,
                //                     fit: BoxFit.contain)),
                //       )
                //     : const SizedBox(),

                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                    borderSide:
                        BorderSide(color: AppColors.bodyBgDark, width: 1.w)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.link, width: 1.w),
                    borderRadius: BorderRadius.circular(9.r)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors.bodyBgDark.withOpacity(0.5),
                        width: 1.w),
                    borderRadius: BorderRadius.circular(9.r)),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.bodyBgDark, width: 1.w),
                    borderRadius: BorderRadius.circular(9.r)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.red, width: 1.w),
                    borderRadius: BorderRadius.circular(9.r)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0.r),
                  borderSide: BorderSide.none,
                ),
              ),
            );
          }),
    );
  }
}
