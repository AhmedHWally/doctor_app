import 'package:doctor_app/core/utils/app_styles/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles/app_text_styles.dart';
import 'package:doctor_app/core/widgets/custom_button.dart';
import 'package:doctor_app/core/widgets/custom_logo_container.dart';
import 'package:doctor_app/core/widgets/custom_text_field.dart';
import 'package:doctor_app/features/auth/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({super.key});

  @override
  State<ResetPasswordViewBody> createState() => _ResetPasswordViewBodyState();
}

class _ResetPasswordViewBodyState extends State<ResetPasswordViewBody> {
  bool isSecure = true;
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
              'Please reset your password',
              textAlign: TextAlign.center,
              style: AppTextStyles.styleBold14
                  .copyWith(color: AppColors.mainColor, fontSize: 18),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextFormFeild(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isSecure,
                  isPassword: true,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isSecure = !isSecure;
                      });
                    },
                    icon: const Icon(Icons.remove_red_eye_outlined),
                    color: const Color(0xFF9FA5C0),
                  ),
                  icon: const Icon(Icons.lock),
                  hintText: 'password'),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextFormFeild(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isSecure,
                  isPassword: true,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isSecure = !isSecure;
                      });
                    },
                    icon: const Icon(Icons.remove_red_eye_outlined),
                    color: const Color(0xFF9FA5C0),
                  ),
                  icon: const Icon(Icons.lock),
                  hintText: 'confirm password'),
            ),
            const SizedBox(
              height: 36,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomButton(
                  color: AppColors.mainColor,
                  title: 'Confirm',
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const LoginView()),
                        (route) => false);
                  },
                ))
          ],
        ),
      ),
    );
  }
}
