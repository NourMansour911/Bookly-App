import 'features/splash/presentation/views/splash_view.dart';
import 'core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: KprimaryColor,
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      home: SplashView(),
    );
  }
}
