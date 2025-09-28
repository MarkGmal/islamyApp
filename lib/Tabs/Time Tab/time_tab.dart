import 'package:flutter/material.dart';
import 'package:session8_islame/Commen/app_const.dart';
import 'package:session8_islame/Main%20Wigets/main_bg.dart';
import 'package:session8_islame/Tabs/Time%20Tab/Widget/azkar_card.dart';

import 'Widget/pary_time.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return MainBg(
      bgImage: AppConsts.timeBg,
      child: Expanded(
        child: Column(
          children: [
            ParyTime(),
            SizedBox(height: 20),
            Text(
              "Azkar",
              style: TextStyle(
                fontFamily: AppConsts.fontFamily,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  Row(
                    children: [
                      AzkarCard(
                        text: "Evening Azkar",
                        imageAzkar: AppConsts.azkar1,
                      ),
                      AzkarCard(
                        text: "Evening Azkar",
                        imageAzkar: AppConsts.azkar1,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      AzkarCard(
                        text: "Evening Azkar",
                        imageAzkar: AppConsts.azkar1,
                      ),
                      AzkarCard(
                        text: "Evening Azkar",
                        imageAzkar: AppConsts.azkar1,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      AzkarCard(
                        text: "Evening Azkar",
                        imageAzkar: AppConsts.azkar1,
                      ),
                      AzkarCard(
                        text: "Evening Azkar",
                        imageAzkar: AppConsts.azkar1,
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
