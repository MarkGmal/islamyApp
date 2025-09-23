import 'package:flutter/material.dart';
import 'package:session8_islame/Commen/app_color.dart';
import 'package:session8_islame/Commen/app_const.dart';
import 'package:session8_islame/Main%20Wigets/main_header.dart';

import 'Widgets/cards.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            MainHeader(),
            SizedBox(height: 20),
            TabBar(
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              tabs: [
                Container(
                  width: 185,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.goldColor,
                  ),
                  child: Tab(text: "Radio"),
                ),
                Container(
                  width: 185,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.blackColor,
                  ),
                  child: Tab(text: "Reciters"),
                ),
              ],
            ),

            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    children: [
                      Cards(
                        image: AppConsts.bg1Card,
                        text: "Radio Ibrahim Al-Akdar",
                        iconPlay: AppConsts.play,
                        iconSound: AppConsts.volumeHigh,
                      ),
                      Cards(
                        image: AppConsts.soundWave,
                        text: "Radio Al-Qaria Yassen",
                        iconPlay: AppConsts.pause,
                        iconSound: AppConsts.volumeLow,
                      ),
                      Cards(
                        image: AppConsts.bg1Card,
                        text: "Radio Ahmed Al-trabulsi",
                        iconPlay: AppConsts.play,
                        iconSound: AppConsts.volumeHigh,
                      ),
                      Cards(
                        image: AppConsts.bg1Card,
                        text: "Radio Ibrahim Al-Akdar",
                        iconPlay: AppConsts.play,
                        iconSound: AppConsts.volumeHigh,
                      ),
                      Cards(
                        image: AppConsts.bg1Card,
                        text: "Radio Addokali Mohammad Alalim",
                        iconPlay: AppConsts.play,
                        iconSound: AppConsts.volumeHigh,
                      ),
                      Cards(
                        image: AppConsts.bg1Card,
                        text: "Radio Ibrahim Al-Akdar",
                        iconPlay: AppConsts.play,
                        iconSound: AppConsts.volumeHigh,
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      Cards(
                        image: AppConsts.bg1Card,
                        text: "Ibrahim Al-Akdar",
                        iconPlay: AppConsts.play,
                        iconSound: AppConsts.volumeHigh,
                      ),
                      Cards(
                        image: AppConsts.soundWave,
                        text: "Akram Alalaqmi",
                        iconPlay: AppConsts.pause,
                        iconSound: AppConsts.volumeLow,
                      ),
                      Cards(
                        image: AppConsts.bg1Card,
                        text: "Majed Al-Enezi",
                        iconPlay: AppConsts.play,
                        iconSound: AppConsts.volumeHigh,
                      ),
                      Cards(
                        image: AppConsts.bg1Card,
                        text: "Malik shaibat Alhamed",
                        iconPlay: AppConsts.play,
                        iconSound: AppConsts.volumeHigh,
                      ),
                      Cards(
                        image: AppConsts.bg1Card,
                        text: "Akram Alalaqmi",
                        iconPlay: AppConsts.play,
                        iconSound: AppConsts.volumeHigh,
                      ),
                      Cards(
                        image: AppConsts.bg1Card,
                        text: "Ibrahim Al-Akdar",
                        iconPlay: AppConsts.play,
                        iconSound: AppConsts.volumeHigh,
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
