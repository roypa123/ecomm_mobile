import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridSection extends StatelessWidget {
  const GridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(10.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.77,
            crossAxisCount: 2,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 16.h,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio: 0.864,
              child: Container(
                color: Colors.yellow,
                width: double.maxFinite,
              ),
              );
          }),
    );
  }
}
