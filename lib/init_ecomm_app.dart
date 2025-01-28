import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/core.dart';
import 'ecomm_bloc_observer.dart';

Future<void> initEcommApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const EcommBlocObserver();
  await injectionContainer();
  await initiliazeObjects();
  await ScreenUtil.ensureScreenSize();
  lockDeviceRotation();
}