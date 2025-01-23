import 'package:flutter/material.dart';
import 'package:safeways/pages/login.dart';
import 'package:safeways/pages/splashscreen.dart';
import 'package:safeways/pages/user/busesPage.dart';
import 'package:safeways/pages/user/landingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SafeWays',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF8C52FF)),
        useMaterial3: false,
      ),
      home: const SplashScreen(),
      routes: {
        '/SplashScreen': (context) => const SplashScreen(),
        '/loginPage': (context) => const LoginPage(),
        '/landingPage': (context) => const LandingPage(),
        '/busesPage': (context) => const BusesPage(images: [], vehicle: [],),
      },
    );
  }
}
