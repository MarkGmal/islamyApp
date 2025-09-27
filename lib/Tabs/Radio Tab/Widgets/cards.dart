import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:session8_islame/Commen/app_color.dart';
import 'package:session8_islame/Commen/app_const.dart';

class Cards extends StatelessWidget {
  Cards({
    required this.image,
    required this.text,
    required this.iconPlay,
    required this.iconSound,
    super.key,
  });

  String text;
  String image;
  String iconPlay;
  String iconSound;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 19),
      width: 390,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.goldColor,
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Opacity(
              opacity: 0.4,
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                child: Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: AppConsts.fontFamily,
                  ),
                ),
              ),
              // SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 13.0),
                child: Row(
                  spacing: 15,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 24),
                    SvgPicture.asset(iconPlay),
                    SvgPicture.asset(iconSound),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
