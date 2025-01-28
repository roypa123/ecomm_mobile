import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core.dart';


class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    this.state,
    required this.onTap,
    this.isActive = true,
  });

  final String title;
  final bool isActive;
  final LoaderState? state;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: (state == LoaderState.loading) || !isActive,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 48.h,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 16.w),
          decoration: BoxDecoration(
            color: isActive == false ? AppColors.faaa1ff : AppColors.f5b4fd8,
            borderRadius: BorderRadius.circular(84.r),
          ),
          child: Center(
            child: state == LoaderState.loading
                ? const CircularProgressIndicator(
                    color: AppColors.white,
                  )
                : Text(title, style: PlusJakartaSansPalette.fWhite_18_600),
          ),
        ),
      ),
    );
  }
}
