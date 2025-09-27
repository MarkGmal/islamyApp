import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:session8_islame/Commen/app_color.dart';
import 'package:session8_islame/Commen/app_const.dart';

import '../../Main Wigets/main_bg.dart';
import 'View/most_recently.dart';
import 'View/suras_list.dart';
import 'Widgets/custom_text_field.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

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
                controller: controller,
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
                child: Column(
                  children: [
                    MostRecently(),
                    SurasList(searchText: controller.text),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
