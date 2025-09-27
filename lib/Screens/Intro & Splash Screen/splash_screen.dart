import 'dart:async';

import 'package:flutter/material.dart';
import 'package:session8_islame/Commen/app_const.dart';

import 'intro_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'suraDetails';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const IntroScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset(AppConsts.splashScreen, fit: BoxFit.cover),
      ),
    );
  }
}
