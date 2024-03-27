import 'package:doctor_app/constants.dart';
import 'package:doctor_app/core/utils/app_styles/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles/app_text_styles.dart';
import 'package:doctor_app/core/widgets/auth_method_container.dart';
import 'package:doctor_app/core/widgets/custom_auth_row.dart';
import 'package:doctor_app/core/widgets/custom_logo_container.dart';
import 'package:doctor_app/core/widgets/user_or_doctor_button.dart';
import 'package:doctor_app/features/auth/views/forgot_password_view.dart';
import 'package:doctor_app/features/auth/views/widgets/login_widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginviewBody extends StatefulWidget {
  const LoginviewBody({super.key});

  @override
  State<LoginviewBody> createState() => _LoginviewBodyState();
}

class _LoginviewBodyState extends State<LoginviewBody> {
  bool isDoctor = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const CustomLogoContainer(),
            const SizedBox(
              height: 18,
            ),
            UserOrDoctorButtonAndWelcomeText(
              isDoctor: (value) {
                setState(() {
                  isDoctor = value;
                });
              },
            ),
            const SizedBox(
              height: 14,
            ),
            LoginForm(
              mainColor: isDoctor ? AppColors.doctorColor : null,
            ),
            const SizedBox(
              height: 18,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: AppColors.mainColor,
                    thickness: 2,
                  )),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Text('OR', style: AppTextStyles.styleBold14)),
                  Expanded(
                      child: Divider(
                    color: AppColors.mainColor,
                    thickness: 2,
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const AuthMethodContainer(
              svgImagePath: googleSvg,
              authMethodName: 'Login with Google',
            ),
            const SizedBox(
              height: 8,
            ),
            const AuthMethodContainer(
              svgImagePath: faceBookSvg,
              authMethodName: 'Login with Facebook',
            ),
            const SizedBox(
              height: 21,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ForgotPasswordView()));
              },
              child: Text('Forgot Password?',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.styleregular14.copyWith(
                      color: AppColors.mainColor, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 4,
            ),
            const CustomAuthRow(
              title: 'Don\'t have a account?',
              buttonTitle: 'Register',
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
