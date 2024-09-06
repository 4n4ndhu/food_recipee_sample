import 'package:flutter/material.dart';
import 'package:food_recipee_sample/view/onboarding_screen/onboarding_screen.dart';
import 'package:food_recipee_sample/view/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
