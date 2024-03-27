import 'package:doctor_app/core/utils/app_styles/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class DoctorTypeField extends StatefulWidget {
  const DoctorTypeField({super.key, this.color});
  final Color? color;
  @override
  State<DoctorTypeField> createState() => _DoctorTypeFieldState();
}

class _DoctorTypeFieldState extends State<DoctorTypeField> {
  String type = 'Specialization';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      iconEnabledColor: widget.color ?? AppColors.mainColor,
      validator: (value) {
        if (value == null) {
          return 'choose Specialization';
        } else {
          return null;
        }
      },
      items: const [
        DropdownMenuItem(
          value: 'obstetrician/gynecologist',
          child: Text(
            'obstetrician/gynecologist',
            style: AppTextStyles.style12,
          ),
        ),
        DropdownMenuItem(
          value: 'Therapeutic Nutritionist',
          child: Text(
            'Therapeutic Nutritionist',
            style: AppTextStyles.style12,
          ),
        )
      ],
      onChanged: (value) {
        setState(() {
          type = value ?? 'Therapeutic Nutritionist';
        });
      },
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Specialization',
          hintStyle: AppTextStyles.style12,
          prefixIcon: const Icon(Icons.medical_information),
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
