import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:session8_islame/Commen/app_color.dart';
import 'package:session8_islame/Commen/app_const.dart';
import 'package:session8_islame/Screens/Main%20Layer/main_layer.dart';

import 'Widgets/intro_page.dart';
import 'Widgets/text_style.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      scrollPhysics: NeverScrollableScrollPhysics(),
      pages: [
        PageViewModel(
          titleWidget: const SizedBox.shrink(),
          bodyWidget: IntroPage(
            image: AppConsts.introBg1,
            title: "Welcome To Islami App",
          ),
        ),
        PageViewModel(
          titleWidget: const SizedBox.shrink(),
          bodyWidget: IntroPage(
            image: AppConsts.introBg2,
            title: "Welcome To Islami",
            subTitle: "We Are Very Excited To Have You In Our Community",
          ),
        ),
        PageViewModel(
          titleWidget: const SizedBox.shrink(),
          bodyWidget: IntroPage(
            image: AppConsts.introBg3,
            title: "Reading the Quran",
            subTitle: "Read, and your Lord is the Most Generous",
          ),
        ),
        PageViewModel(
          titleWidget: const SizedBox.shrink(),
          bodyWidget: IntroPage(
            image: AppConsts.introBg4,
            title: "Bearish",
            subTitle: "Praise the name of your Lord, the Most High",
          ),
        ),
        PageViewModel(
          titleWidget: const SizedBox.shrink(),
          bodyWidget: IntroPage(
            image: AppConsts.introBg5,
            title: "Holy Quran Radio",
            subTitle:
                "You can listen to the Holy Quran Radio through the application for free and easily",
          ),
        ),
      ],
      dotsDecorator: DotsDecorator(
        activeColor: AppColors.goldColor,
        color: AppColors.greyColor,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(27.0),
        ),
        activeSize: Size(18, 7),
      ),
      onDone: () {
        Navigator.of(
          context,
        ).pushReplacement(MaterialPageRoute(builder: (_) => MainLayer()));
      },
      showSkipButton: false,
      showBackButton: true,
      next: Text("Next", style: TextStyles.textStyle),
      done: Text("Finish", style: TextStyles.textStyle),
      back: Text("Back", style: TextStyles.textStyle),
    );
  }
}
