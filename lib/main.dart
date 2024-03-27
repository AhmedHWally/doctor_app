import 'package:doctor_app/core/utils/app_styles/app_colors.dart';
import 'package:doctor_app/features/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const DoctorApp());
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: false,
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: AppColors.mainColor,
            selectionColor: AppColors.mainColor,
            selectionHandleColor: AppColors.mainColor,
          )),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
