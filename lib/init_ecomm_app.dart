import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/core.dart';




Future<void> initEcommApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injectionContainer();
  await initiliazeObjects();
  await ScreenUtil.ensureScreenSize();
  lockDeviceRotation();
}