import 'package:flutter/material.dart';
import 'package:session8_islame/Commen/app_color.dart';

import '../../../Commen/app_const.dart';

class AzkarCard extends StatelessWidget {
  String text;
  String imageAzkar;

  AzkarCard({required this.text, required this.imageAzkar, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: 185,
      height: 259,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.blackColor,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 23.0),
            child: Image.asset(imageAzkar),
          ),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(
              fontFamily: AppConsts.fontFamily,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
