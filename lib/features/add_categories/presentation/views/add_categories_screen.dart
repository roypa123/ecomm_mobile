import 'package:ecomm_mobile/core/common/widgets/common_app_bar.dart';
import 'package:ecomm_mobile/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/common_text_form.dart';
import '../../../../core/common/widgets/primary_button.dart';
import '../bloc/add_categories_bloc.dart';

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
    return BlocListener<AddCategoriesBloc, AddCategoriesState>(
      listener: (context, state) {
        if (state is AddCategoriesSuccessState) {
          showToast(
            msg: Strings.detailsSuccessfullyAdded,
            isError: false,
          );
        } else if (state is AddCategoriesError) {
          showToast(
            msg: state.message.toString(),
            isError: true,
          );
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.bodyBgLight,
        appBar: const CommonAppBar(
          title: Strings.addCategories,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          width: double.maxFinite,
          height: double.maxFinite,
          child: Form(
            key: formKey,
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
                  controller: subCategoryController,
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
                  controller: typeController,
                  hintText: Strings.egNokia,
                  type: TextInputFields.name,
                ),
                15.verticalSpace,
                PrimaryButton(
                  title: Strings.submit,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      context.read<AddCategoriesBloc>().add(
                            AddItemsEvent(
                              category: categoryController.text.trim(),
                              subCategory: subCategoryController.text.trim(),
                              type: typeController.text.trim(),
                            ),
                          );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
