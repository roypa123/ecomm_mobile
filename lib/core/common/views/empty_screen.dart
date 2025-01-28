

import 'package:flutter/material.dart';
import 'package:stoblo/core/configs/styles/app_colors.dart';
import 'package:stoblo/core/configs/styles/fonts/plus_jakarta_sans.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Text(
          'NO ROUTE FOUND !',
          style: PlusJakartaSansPalette.fWhite_14_400,
        ),
      ),
    );
  }
}