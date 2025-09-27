import 'package:flutter/material.dart';
import 'package:session8_islame/Commen/app_color.dart';
import 'package:session8_islame/Commen/app_const.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  Widget? prefixIcon;
  final TextEditingController controller;

  CustomTextField({
    this.hintText,
    this.prefixIcon,
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: AppConsts.fontFamily,
      ),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.offWhiteColor.withValues(alpha: .6),
          fontSize: 16,
          fontWeight: FontWeight.normal,
          fontFamily: AppConsts.fontFamily,
        ),
        fillColor: AppColors.blackColor.withValues(alpha: .7),
        filled: true,

        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: prefixIcon,
        ),

        border: _getBorder(),
        focusedBorder: _getBorder(),
        enabledBorder: _getBorder(),
      ),
    );
  }
}

OutlineInputBorder _getBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: AppColors.goldColor),
  );
}
