import 'package:doctor_app/core/utils/app_styles/app_colors.dart';
import 'package:doctor_app/core/widgets/custom_button.dart';
import 'package:doctor_app/core/widgets/custom_text_field.dart';
import 'package:doctor_app/features/home/views/home_view.dart';
import 'package:doctor_app/features/profile/views/profile_view.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key, this.mainColor});
  final Color? mainColor;
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  bool isSecure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: _loginFormKey,
        child: Column(
          children: [
            CustomTextFormFeild(
              color: widget.mainColor,
              icon: const Icon(Icons.email_outlined),
              hintText: 'your email',
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter your email';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormFeild(
                color: widget.mainColor,
                icon: const Icon(Icons.lock_outline),
                hintText: 'password',
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
                obscureText: isSecure,
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter your password';
                  } else {
                    return null;
                  }
                }),
            const SizedBox(
              height: 16,
            ),
            CustomButton(
              onTap: () {
                if (_loginFormKey.currentState!.validate()) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const ProfileView()));
                }
              },
              color: widget.mainColor,
              title: 'Sign In',
            ),
          ],
        ),
      ),
    );
  }
}
