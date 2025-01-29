import 'dart:io';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../core.dart';

Future<bool> isInternetAvailable() async {
  try {
    final result = await InternetAddress.lookup("google.com");
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
  } on SocketException catch (_) {
    return false;
  }
  return false;
}

void showToast({String? msg, bool? isError = true}) {
  Fluttertoast.showToast(
      msg: msg!,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      //backgroundColor:  isError! ? AppColors.fd12828 :AppColors.f01e17b,
      //textColor: isError ? AppColors.white : AppColors.black,
      fontSize: 14.sp);
}

