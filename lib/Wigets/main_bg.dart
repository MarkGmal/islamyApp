import 'package:flutter/material.dart';
import 'package:session8_islame/Wigets/main_header.dart';

import '../Commen/app_color.dart';

class MainBg extends StatelessWidget {
  final Widget child;
  final String bgImage;

  const MainBg({required this.child, required this.bgImage, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(bgImage), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.blackColor.withValues(alpha: .7),
              AppColors.blackColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(child: Column(children: [MainHeader(), child])),
      ),
    );
  }
}
