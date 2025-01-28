import 'package:flutter/material.dart';

class CommonTextButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  final TextStyle? textStyle;
  final Color? color;
  const CommonTextButton(
      {super.key,
      required this.text,
      this.color,
      required this.onTap,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(text, style: textStyle),
    );
  }
}