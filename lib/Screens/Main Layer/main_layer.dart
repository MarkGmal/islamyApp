import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:session8_islame/Commen/app_const.dart';
import 'package:session8_islame/Tabs/quran_tab/quran_tab.dart';

import '../../Commen/common_decorations.dart';
import '../../Tabs/Radio Tab/radio_tab.dart';
import '../../Tabs/hadeeth Tab/hadeeth_tab.dart';

class MainLayer extends StatefulWidget {
  @override
  State<MainLayer> createState() => _MainLayerState();
}

class _MainLayerState extends State<MainLayer> {
  int currentTab = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadeethTab(),
    Container(color: Colors.amber),
    RadioTab(),
    Container(color: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,

        onTap: (value) {
          setState(() {
            currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              decoration: currentTab == 0
                  ? CommonDecorations.selectedItemDecoration
                  : null,
              child: SvgPicture.asset(
                AppConsts.quranIcon,
                width: currentTab == 0 ? 20 : 25,
                color: currentTab == 0 ? Colors.white : null,
              ),
            ),
            label: "Quran",
          ),

          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              decoration: currentTab == 1
                  ? CommonDecorations.selectedItemDecoration
                  : null,

              child: SvgPicture.asset(
                AppConsts.hadethIcon,
                width: currentTab == 1 ? 20 : 25,
                color: currentTab == 1 ? Colors.white : null,
              ),
            ),
            label: "Hadeth",
          ),

          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              decoration: currentTab == 2
                  ? CommonDecorations.selectedItemDecoration
                  : null,
              child: SvgPicture.asset(
                AppConsts.sebhaIcon,
                width: currentTab == 2 ? 20 : 25,
                color: currentTab == 2 ? Colors.white : null,
              ),
            ),
            label: "Sebha",
          ),

          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              decoration: currentTab == 3
                  ? CommonDecorations.selectedItemDecoration
                  : null,
              child: SvgPicture.asset(
                AppConsts.radioIcon,
                width: currentTab == 3 ? 20 : 25,
                color: currentTab == 3 ? Colors.white : null,
              ),
            ),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              decoration: currentTab == 4
                  ? CommonDecorations.selectedItemDecoration
                  : null,
              child: SvgPicture.asset(
                AppConsts.timeIcon,
                width: currentTab == 4 ? 20 : 25,
                color: currentTab == 4 ? Colors.white : null,
              ),
            ),
            label: "Time",
          ),
        ],
      ),
    );
  }
}
