import 'package:flutter/material.dart';
import 'package:session8_islame/Commen/app_const.dart';

import '../../Main Wigets/main_bg.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int zakrCount = 0;
  double turns = 0;
  List<String> zakrList = ["سبحان الله", "الحمد لله", "الله أكبر"];

  void onTap() {
    setState(() {
      counter++;
      turns += 1 / 30;
      if (counter > 30) {
        counter = 1;
        zakrCount++;
        if (zakrCount >= zakrList.length) {
          zakrCount = 0;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainBg(
      bgImage: AppConsts.sebhaTabBg,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppConsts.fontFamily,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Image.asset(AppConsts.sebhaTest, height: 86, width: 145),
            GestureDetector(
              onTap: onTap,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedRotation(
                    turns: turns,
                    duration: Duration(milliseconds: 400),
                    child: Image(image: AssetImage(AppConsts.sebhaBody)),
                  ),
                  Column(
                    spacing: 10,
                    children: [
                      Text(
                        zakrList[zakrCount],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          fontFamily: AppConsts.fontFamily,
                        ),
                      ),
                      Text(
                        "$counter",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          fontFamily: AppConsts.fontFamily,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
