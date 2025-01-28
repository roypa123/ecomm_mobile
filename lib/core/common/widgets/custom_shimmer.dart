import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmer extends StatelessWidget {
  const CustomShimmer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: const Color(0xffA19A9A).withOpacity(0.09),
        highlightColor: const Color(0xffA19A9A).withOpacity(0.15),
        child: child);
  }
}