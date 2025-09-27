import 'package:flutter/material.dart';
import 'package:session8_islame/Screens/Intro%20&%20Splash%20Screen/splash_screen.dart';

import 'Screens/Main Layer/main_layer.dart';
import 'Tabs/quran_tab/sura_details.dart';
import 'Theme/app-theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      routes: {
        MainLayer.routeName: (_) => MainLayer(),
        SuraDetails.routeName: (ctx) => SuraDetails(),
      },
      home: SplashScreen(),
    );
  }
}
