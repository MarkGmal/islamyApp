import 'package:flutter/cupertino.dart';

import 'app_color.dart';

class CommonDecorations {
  static BoxDecoration selectedItemDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(66)),
    color: AppColors.blackColor.withValues(alpha: .6),
  );
}
