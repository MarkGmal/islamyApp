import 'package:flutter/material.dart';
import 'package:session8_islame/Theme/app-theme.dart';

import 'Screens/main_layer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.appTheme,

      home: MainLayer(),
    );
  }
}
