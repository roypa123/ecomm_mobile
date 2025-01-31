import 'package:ecomm_mobile/core/common/widgets/common_app_bar.dart';
import 'package:ecomm_mobile/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/common_text_form.dart';
import '../../../../core/common/widgets/primary_button.dart';

class AddCategoriesScreen extends StatefulWidget {
  const AddCategoriesScreen({super.key});

  @override
  State<AddCategoriesScreen> createState() => _AddCategoriesScreenState();
}

class _AddCategoriesScreenState extends State<AddCategoriesScreen> {
  final categoryController = TextEditingController();
  final subCategoryController = TextEditingController();
  final typeController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.bodyBgLight,
      appBar: const CommonAppBar(
        title: Strings.addCategories,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            25.verticalSpace,
            Align(
              alignment: Alignment.topLeft,
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  text: Strings.enterCategory,
                  style: RobotoPalette.fPrimaryTextLight_14_600,
                  children: [
                    TextSpan(
                        text: Strings.asterik,
                        style: RobotoPalette.fPrimaryTextLight_14_600
                            .copyWith(color: AppColors.red)),
                  ],
                ),
              ),
            ),
            5.verticalSpace,
            CommonTextForm(
              controller: categoryController,
              hintText: Strings.exampleElectronics,
              type: TextInputFields.name,
            ),
            5.verticalSpace,
            Align(
              alignment: Alignment.topLeft,
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  text: Strings.enterSubCategory,
                  style: RobotoPalette.fPrimaryTextLight_14_600,
                  children: [
                    TextSpan(
                        text: Strings.asterik,
                        style: RobotoPalette.fPrimaryTextLight_14_600
                            .copyWith(color: AppColors.red)),
                  ],
                ),
              ),
            ),
            5.verticalSpace,
            CommonTextForm(
              controller: categoryController,
              hintText: Strings.egPhone,
              type: TextInputFields.name,
            ),
            5.verticalSpace,
            Align(
              alignment: Alignment.topLeft,
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  text: Strings.entertype,
                  style: RobotoPalette.fPrimaryTextLight_14_600,
                  children: [
                    TextSpan(
                        text: Strings.asterik,
                        style: RobotoPalette.fPrimaryTextLight_14_600
                            .copyWith(color: AppColors.red)),
                  ],
                ),
              ),
            ),
            5.verticalSpace,
            CommonTextForm(
              controller: categoryController,
              hintText: Strings.egNokia,
              type: TextInputFields.name,
            ),
            15.verticalSpace,
            PrimaryButton(
              title: Strings.submit,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
