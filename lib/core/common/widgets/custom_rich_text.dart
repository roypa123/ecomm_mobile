import 'package:flutter/material.dart';

import '../../core.dart';


class CustomRichText extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final VoidCallback? onTap;
  const CustomRichText({
    super.key,
    required this.textOne,
    required this.textTwo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text.rich(
        TextSpan(
          text: textOne,
          style: PlusJakartaSansPalette.fe2e2e2_14_500,
          children: <TextSpan>[
            TextSpan(
                text: textTwo, style: PlusJakartaSansPalette.f7163ff_14_500u),
          ],
        ),
      ),
    );
  }
}