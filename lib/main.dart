import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/app_colors.dart';
import 'package:milliy_shifo/presentation/pages/splash/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backColor),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
