import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:session8_islame/Commen/app_color.dart';
import 'package:session8_islame/Commen/app_const.dart';

import '../../Main Wigets/main_bg.dart';
import 'View/most_recently.dart';
import 'View/suras_list.dart';
import 'Widgets/custom_text_field.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return MainBg(
      bgImage: AppConsts.quranTabBg,
      child: Expanded(
        child: Column(
          spacing: 10,
          children: [
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
    );
  }
}
