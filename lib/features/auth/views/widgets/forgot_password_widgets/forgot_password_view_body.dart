import 'package:doctor_app/core/utils/app_styles/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles/app_text_styles.dart';
import 'package:doctor_app/core/widgets/custom_button.dart';
import 'package:doctor_app/core/widgets/custom_logo_container.dart';
import 'package:doctor_app/core/widgets/custom_text_field.dart';
import 'package:doctor_app/features/auth/views/reset_password_view.dart';
import 'package:doctor_app/features/auth/views/verify_email_view.dart';
import 'package:flutter/material.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const CustomLogoContainer(),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Oops did you forget your password !\n please enter your email',
              textAlign: TextAlign.center,
              style: AppTextStyles.styleBold14
                  .copyWith(color: AppColors.mainColor, fontSize: 18),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextFormFeild(
                icon: Icon(Icons.email_outlined),
                hintText: 'Your Email',
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                color: AppColors.mainColor,
                title: 'SEND',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ResetPasswordView()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
