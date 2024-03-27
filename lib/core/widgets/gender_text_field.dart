import 'dart:developer';

import 'package:doctor_app/core/utils/app_styles/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class GenderTextField extends StatefulWidget {
  const GenderTextField({super.key, this.color});
  final Color? color;
  @override
  State<GenderTextField> createState() => _GenderTextFieldState();
}

class _GenderTextFieldState extends State<GenderTextField> {
  String type = 'gender';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      // dropdownColor: widget.color ?? AppColors.mainColor,
      iconEnabledColor: widget.color ?? AppColors.mainColor,
      validator: (value) {
        if (value == null) {
          return 'choose gender';
        } else {
          return null;
        }
      },
      items: const [
        DropdownMenuItem(
          value: 'male',
          child: Text(
            'male',
            style: AppTextStyles.style12,
          ),
        ),
        DropdownMenuItem(
          value: 'female',
          child: Text(
            'female',
            style: AppTextStyles.style12,
          ),
        )
      ],
      onChanged: (value) {
        setState(() {
          type = value ?? 'male';
        });
      },
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Gender',
          hintStyle: AppTextStyles.style12,
          prefixIcon: Icon(type == 'gender'
              ? Icons.person
              : type == 'male'
                  ? Icons.male
                  : Icons.female),
          errorStyle: AppTextStyles.style12.copyWith(
              color: widget.color ?? AppColors.splashColor,
              fontWeight: FontWeight.bold),
          prefixIconColor: widget.color ?? AppColors.mainColor,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          focusedErrorBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: widget.color ?? AppColors.splashColor),
              borderRadius: BorderRadius.circular(5)),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: widget.color ?? AppColors.splashColor),
              borderRadius: BorderRadius.circular(5)),
          errorBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: widget.color ?? AppColors.splashColor),
              borderRadius: BorderRadius.circular(5)),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: widget.color ?? AppColors.splashColor),
              borderRadius: BorderRadius.circular(5))),
    );
  }
}
