import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Commen/app_color.dart';
import '../../../Commen/app_const.dart';

class ParyTime extends StatelessWidget {
  const ParyTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 301,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: AppColors.goldColor,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "16 Jul,\n 2024",
                  style: TextStyle(
                    fontFamily: AppConsts.fontFamily,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Pray Time \n Tuesday",
                  style: TextStyle(
                    fontFamily: AppConsts.fontFamily,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "09 Muh,\n 1446",
                  style: TextStyle(
                    fontFamily: AppConsts.fontFamily,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.5, initialPage: 2),
              itemBuilder: (context, index) => Container(
                width: 97,
                height: 131,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                    colors: <Color>[AppColors.blackColor, AppColors.goldColor],
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 3.5, vertical: 15),
                child: Column(
                  children: [
                    Text(
                      "ASR",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppConsts.fontFamily,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "04:38",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppConsts.fontFamily,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "PM",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppConsts.fontFamily,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 120),
                Text(
                  "Next Pray - 02:32",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: AppConsts.fontFamily,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 50),
                SvgPicture.asset(AppConsts.volumeLow),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
