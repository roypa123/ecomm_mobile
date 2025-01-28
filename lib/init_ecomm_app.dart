import 'package:flutter/material.dart';



Future<void> initEcommApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injectionContainer();
  await initiliazeObjects();
  await ScreenUtil.ensureScreenSize();
  lockDeviceRotation();
}