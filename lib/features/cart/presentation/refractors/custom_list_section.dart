import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/core.dart';

class CustomListSection extends StatelessWidget {
  const CustomListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 10,
        separatorBuilder: (context, index) {
          return Container(
            color: AppColors.seperatorLight,
            child: 5.verticalSpace,
          );
        },
        itemBuilder: (context, index) {
          return SizedBox(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        const Text("\$799.0"),
                        5.verticalSpace,
                        const Text(
                            "iPhone 13 Pro Max(15th Gen) - 256 gb Midnight Black"),
                        5.verticalSpace,
                        Row(
                          children: [
                            const Text("Sub Total: "),
                            5.horizontalSpace,
                            const Text("\$799.0")
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  color: AppColors.strokeLight,
                  child: 1.verticalSpace,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text("Remove Item"),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
