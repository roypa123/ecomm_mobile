

import 'package:flutter/material.dart';
import 'package:stoblo/core/common/widgets/custom_shimmer.dart';
import 'package:stoblo/core/configs/styles/app_colors.dart';

class CommonImageNetwork extends StatelessWidget {
  const CommonImageNetwork(
      {super.key,
      required this.imageUrl,
      this.loadingWidget,
      this.errorWidget,
      this.boxFit = BoxFit.cover});
  final String imageUrl;
  final Widget? loadingWidget;
  final Widget? errorWidget;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      filterQuality: FilterQuality.high,
      width: double.maxFinite,
      height: double.maxFinite,
      imageUrl,
      fit: boxFit,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return loadingWidget ??
              CustomShimmer(
                child: Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: AppColors.f7849B6,
                  ),
                ),
              );
        }
      },
      errorBuilder:
          (BuildContext context, Object error, StackTrace? stackTrace) {
        return errorWidget ??
            Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.white,
                child: const Text(""));
      },
    );
  }
}
