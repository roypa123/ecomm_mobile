import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/core.dart';



class EcommApp extends StatelessWidget {
  const EcommApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) => MaterialApp(
        title: AppConstants.appName,
        navigatorKey: navigatorKey,
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: RouteConstants.routeInitial,
        theme: AppTheme.themeData,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return MediaQuery.withClampedTextScaling(
            minScaleFactor: 0.75,
            maxScaleFactor: 1.4,
            child: child ?? const SizedBox(),
          );
        },
      ),
    );
  }
}