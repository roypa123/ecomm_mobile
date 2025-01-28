import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stoblo/core/common/widgets/common_icon_widget.dart';
import 'package:stoblo/core/configs/constants/app_vectors.dart';
import 'package:stoblo/core/configs/enums/text_input_enums.dart';
import 'package:stoblo/core/configs/styles/app_colors.dart';
import 'package:stoblo/core/configs/styles/fonts/plus_jakarta_sans.dart';
import 'package:stoblo/core/utils/helpers/validators.dart';

class CommonTextForm extends StatelessWidget {
  final Function(dynamic) onchange;
  final TextEditingController controller;
  final String? confirmText;
  final String hintText;
  final String prefixIcon;
  final TextInputType? keyboardType;
  final Enum type;
  final FocusNode? focusNode;
  final bool isError;
  const CommonTextForm(
      {super.key,
      this.keyboardType,
      this.focusNode,
      this.confirmText,
      required this.controller,
      required this.onchange,
      required this.hintText,
      required this.prefixIcon,
      required this.type,
      required this.isError});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isObscured = ValueNotifier<bool>(false);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: ValueListenableBuilder<bool>(
          valueListenable: isObscured,
          builder: (context, isOb, child) {
            return TextFormField(
              focusNode: focusNode,
              cursorColor: AppColors.ff6f6f6,
              obscuringCharacter: "*",
              onChanged: (value) {
                onchange(value);
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: controller,
              style: PlusJakartaSansPalette.ff6f6f6_14_400,
              validator: (value) {
                if (type == TextInputFields.email) {
                  return Validators.validateEmail(value);
                } else if (type == TextInputFields.password &&
                    confirmText != null) {
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
                      (type == TextInputFields.oldPassword) ||
                      (type == TextInputFields.changePassword),
              decoration: InputDecoration(
                errorMaxLines: 4,
                isDense: true,
                hintText: hintText,
                hintStyle: PlusJakartaSansPalette.fb6b6b6_14_400,
                errorStyle: PlusJakartaSansPalette.fff4646_14_400,
                filled: true,
                fillColor: AppColors.transparent,
                suffixIcon: type == TextInputFields.password ||
                        type == TextInputFields.loginPassword
                    ? GestureDetector(
                        onTap: () {
                          isObscured.value = !isObscured.value;
                        },
                        child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: isOb
                                ? SvgPicture.asset(AppVectors.svgEyeclosed,
                                    width: 16.w,
                                    height: 16.h,
                                    fit: BoxFit.contain)
                                : SvgPicture.asset(AppVectors.svgEyeopen,
                                    width: 16.w,
                                    height: 16.h,
                                    fit: BoxFit.contain)),
                      )
                    : const SizedBox(),
                prefixIcon: (type == TextInputFields.name)
                    ? null
                    : CommonIconWidget(imgUrl: prefixIcon),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                    borderSide:
                        BorderSide(color: AppColors.fff4646, width: 1.w)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isError ? AppColors.fff4646 : AppColors.f7163ff,
                        width: 1.w),
                    borderRadius: BorderRadius.circular(9.r)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isError ? AppColors.fff4646 : AppColors.ff6f6f6,
                        width: 1.w),
                    borderRadius: BorderRadius.circular(9.r)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isError ? AppColors.fff4646 : AppColors.ff6f6f6,
                        width: 1.w),
                    borderRadius: BorderRadius.circular(9.r)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.fff4646, width: 1.w),
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
