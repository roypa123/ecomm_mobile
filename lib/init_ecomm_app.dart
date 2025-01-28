import 'package:ecomm_mobile/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/core.dart';
import 'ecomm_bloc_observer.dart';

Future<void> initEcommApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const EcommBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await injectionContainer();
  await initiliazeObjects();
  await ScreenUtil.ensureScreenSize();
  lockDeviceRotation();
}