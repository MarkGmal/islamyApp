import 'package:flutter/material.dart';
import 'package:session8_islame/Commen/app_color.dart';

import '../../../Commen/app_const.dart';

class MostRecently extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Most Recently',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 20),
            itemBuilder: (context, index) => SizedBox(
              width: 280,
              child: Card(
                color: AppColors.goldColor,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 7,
                    top: 7,
                    bottom: 7,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 200,
                              child: Text(
                                "Al-Anbiya",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: AppColors.blackColor,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                "الأنبياء",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: AppColors.blackColor,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                "112 Verses",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: AppColors.blackColor,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        bottom: 0,
                        child: Image.asset(AppConsts.mostRecently),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
