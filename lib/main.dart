import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scholarship_app_project/routes/app_routes.dart';
import 'package:scholarship_app_project/screens/onboarding_screen/onboarding_screen.dart';
import 'package:scholarship_app_project/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash_screen",

      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffffffff),
        textTheme: GoogleFonts.kantumruyProTextTheme(
          Theme.of(context).textTheme,
        ),
      ),

      routes: {
        AppRoutes.splashscreen: (context) => SplashScreen(),
        AppRoutes.onboardingscreen: (context) => OnboardingScreen(),
      },
    );
  }
}
