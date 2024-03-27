import 'package:doctor_app/core/utils/app_styles/app_colors.dart';
import 'package:doctor_app/core/widgets/custom_auth_row.dart';
import 'package:doctor_app/core/widgets/custom_logo_container.dart';
import 'package:doctor_app/core/widgets/user_or_doctor_button.dart';
import 'package:doctor_app/features/auth/views/widgets/register_widgets/register_form.dart';
import 'package:flutter/material.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
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
              isLogin: false,
              isDoctor: (value) {
                setState(() {
                  isDoctor = value;
                });
              },
            ),
            const SizedBox(
              height: 14,
            ),
            RegisterForm(mainColor: isDoctor ? AppColors.doctorColor : null),
            const SizedBox(
              height: 24,
            ),
            const CustomAuthRow(
                title: 'have a account?', buttonTitle: 'Sign In'),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
