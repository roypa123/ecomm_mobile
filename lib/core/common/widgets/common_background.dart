import 'package:flutter/material.dart';
import 'package:stoblo/core/configs/styles/app_colors.dart';

class CommonBackground extends StatelessWidget {
  final Widget child;
  final bool? isPadding;
  const CommonBackground(
      {super.key, required this.child, this.isPadding = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.f7c22b3, AppColors.f060510],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [-0.5235, 0.3933],
        ),
      ),
      padding: isPadding!
          ? const EdgeInsets.symmetric(vertical: 10, horizontal: 18)
          : const EdgeInsets.all(0),
      child: child,
    );
  }
}