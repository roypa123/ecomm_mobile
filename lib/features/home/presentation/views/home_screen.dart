import 'package:ecomm_mobile/core/core.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/widgets/common_app_bar.dart';
import 'app_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyBgLight,
      appBar: const CommonAppBar(
        menuButton: true,
        title: "Mobikul",
      ),
      drawer: const AppDrawer(),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
