import 'package:flutter/material.dart';
import 'ecomm_app.dart';
import 'init_ecomm_app.dart';


Future<void> main() async {
  await initEcommApp();
  runApp(const EcommApp());
}
