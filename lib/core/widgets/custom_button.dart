import 'package:doctor_app/core/utils/app_styles/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.color, required this.title});
  final void Function()? onTap;
  final Color? color;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: color ?? AppColors.mainColor,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
              child: Text(
            title,
            style: AppTextStyles.styleBold14.copyWith(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
