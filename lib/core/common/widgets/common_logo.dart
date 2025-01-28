import 'package:flutter/material.dart';
import 'package:stoblo/core/extensions/context_extensions.dart';

class CommonLogo extends StatelessWidget {
  final String imgUrl;
  final String imgUrlbackground;
  const CommonLogo(
      {super.key, required this.imgUrl, required this.imgUrlbackground});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SizedBox(
          height: context.sh(size: 0.13),
          width: context.sw(size: 1),
          child: Image.asset(
            imgUrlbackground,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: context.sh(size: 0.20),
          width: context.sw(size: 0.40),
          child: Image.asset(
            imgUrl,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}