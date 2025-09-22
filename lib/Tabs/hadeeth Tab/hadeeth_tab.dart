import 'package:flutter/material.dart';
import 'package:session8_islame/Commen/app_color.dart';
import 'package:session8_islame/Commen/app_const.dart';

import '../../Main Wigets/main_bg.dart';

class HadeethTab extends StatelessWidget {
  const HadeethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return MainBg(
      bgImage: AppConsts.hadethTabBg,
      child: Expanded(
        child: PageView.builder(
          controller: PageController(viewportFraction: 0.8),
          itemBuilder: (context, index) => Card(color: AppColors.goldColor),
        ),
      ),
    );
  }
}
