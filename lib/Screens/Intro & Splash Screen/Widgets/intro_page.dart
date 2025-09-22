import 'package:flutter/material.dart';
import 'package:session8_islame/Screens/Intro%20&%20Splash%20Screen/Widgets/text_style.dart';

import '../../../Main Wigets/main_header.dart';

class IntroPage extends StatelessWidget {
  IntroPage({
    required this.title,
    this.subTitle,
    required this.image,
    super.key,
  });

  String image;
  String title;
  String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainHeader(),
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 20,
            bottom: 39,
          ),
          child: Image.asset(image),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 39.0),
          child: Text(title, style: TextStyles.textStyleTitle),
        ),
        Text(
          subTitle ?? "",
          textAlign: TextAlign.center,
          style: TextStyles.textStyleSubTitle,
        ),
      ],
    );
  }
}
