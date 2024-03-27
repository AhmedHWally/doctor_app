import 'package:doctor_app/core/utils/app_styles/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild(
      {super.key,
      required this.icon,
      required this.hintText,
      this.validator,
      this.keyboardType,
      this.obscureText,
      this.suffixIcon,
      this.isPassword,
      this.color});
  final Widget? icon;
  final String hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Widget? suffixIcon;
  final bool? isPassword;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: keyboardType,
      obscureText: isPassword == null ? false : obscureText ?? false,
      cursorColor: color ?? AppColors.mainColor,
      style: AppTextStyles.style12.copyWith(fontWeight: FontWeight.bold),
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: AppTextStyles.style12,
          prefixIcon: icon,
          suffixIcon: suffixIcon,
          errorStyle: AppTextStyles.style12.copyWith(
              color: color ?? AppColors.splashColor,
              fontWeight: FontWeight.bold),
          prefixIconColor: color ?? AppColors.mainColor,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: color ?? AppColors.splashColor),
              borderRadius: BorderRadius.circular(5)),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: color ?? AppColors.splashColor),
              borderRadius: BorderRadius.circular(5)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: color ?? AppColors.splashColor),
              borderRadius: BorderRadius.circular(5)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: color ?? AppColors.splashColor),
              borderRadius: BorderRadius.circular(5))),
    );
  }
}
