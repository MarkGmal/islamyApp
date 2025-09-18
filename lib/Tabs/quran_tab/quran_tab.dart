import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:session8_islame/Commen/app_color.dart';
import 'package:session8_islame/Commen/app_const.dart';

import '../../Wigets/main_header.dart';
import 'View/most_recently.dart';
import 'View/suras_list.dart';
import 'Widgets/custom_text_field.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppConsts.quranTabBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.blackColor.withValues(alpha: .7),
              AppColors.blackColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            spacing: 10,
            children: [
              MainHeader(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextField(
                  hintText: 'Sura Name',
                  prefixIcon: SvgPicture.asset(
                    AppConsts.quranIcon,
                    colorFilter: ColorFilter.mode(
                      AppColors.goldColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(children: [MostRecently(), SurasList()]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
