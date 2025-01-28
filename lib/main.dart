import 'package:ecomm_mobile/ecomm_app.dart';
import 'package:ecomm_mobile/init_ecomm_app.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  await initEcommApp();
  runApp(const EcommApp());
}
