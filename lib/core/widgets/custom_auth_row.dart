import 'package:doctor_app/core/utils/app_styles/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles/app_text_styles.dart';
import 'package:doctor_app/features/auth/views/login_view.dart';
import 'package:doctor_app/features/auth/views/register_view.dart';
import 'package:flutter/material.dart';

class CustomAuthRow extends StatelessWidget {
  const CustomAuthRow({
    super.key,
    required this.title,
    required this.buttonTitle,
  });
  final String title, buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppTextStyles.styleregular14.copyWith(color: Colors.black),
        ),
        const SizedBox(
          width: 4,
        ),
        GestureDetector(
          onTap: () {
            switch (buttonTitle) {
              case 'Register':
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const RegisterView()));
                break;
              case 'Sign In':
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LoginView()));
                break;
            }
          },
          child: Text(
            buttonTitle,
            style: AppTextStyles.styleregular14.copyWith(
                color: AppColors.mainColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
