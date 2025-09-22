import 'package:flutter/material.dart';

import '../Commen/app_const.dart';

class MainHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Image.asset(
        AppConsts.mainHeaderBg,
        width: 300,
        height: 140,
        fit: BoxFit.cover,
      ),
    );
  }
}
