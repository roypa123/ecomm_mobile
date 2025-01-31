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
                } else if (type == TextInputFields.confirmPassword) {
                  return Validators.validateConfirmPassword(confirmText, value);
                } else if (type == TextInputFields.loginPassword) {
                  return Validators.validateLoginPassword(value);
                } else if (type == TextInputFields.password) {
                  return Validators.validateNewPassword(value);
                } else if (type == TextInputFields.oldPassword) {
                  return Validators.validateLoginPassword(value);
                } else if (type == TextInputFields.changePassword &&
                    confirmText != null) {
                  return Validators.validateDoNotMatchPassword(
                      confirmText, value);
                } else if (type == TextInputFields.name) {
                  return Validators.validateName(value);
                }
                return null;
              },
              obscureText:
                  (type == TextInputFields.password && !isObscured.value) ||
                      (type == TextInputFields.loginPassword &&
                          !isObscured.value) ||
                      (type == TextInputFields.confirmPassword &&
                          !isObscured.value) ||
                      (type == TextInputFields.oldPassword) ||
                      (type == TextInputFields.changePassword),
              decoration: InputDecoration(
                hintStyle: RobotoPalette.fPrimaryTextLight_14_400.copyWith(color: AppColors.secondaryText),
                errorMaxLines: 4,
                isDense: true,
                hintText: hintText,
                filled: true,
                fillColor: AppColors.transparent,
                suffixIcon: type == TextInputFields.password ||
                        type == TextInputFields.loginPassword || type == TextInputFields.confirmPassword
                    ? GestureDetector(
                        onTap: () {
                          isObscured.value = !isObscured.value;
                        },
                        child: Icon(
                            isOb ? Icons.visibility_off : Icons.visibility),
                      )
                    : const SizedBox(),
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
                    borderSide: BorderSide(color: AppColors.red, width: 1.w),
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
