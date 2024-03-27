import 'package:doctor_app/core/utils/app_styles/app_colors.dart';
import 'package:doctor_app/core/widgets/custom_button.dart';
import 'package:doctor_app/core/widgets/custom_text_field.dart';
import 'package:doctor_app/core/widgets/doctor_type_field.dart';
import 'package:doctor_app/core/widgets/gender_text_field.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key, this.mainColor});
  final Color? mainColor;
  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  bool isSecure = true;
  String? password, confirmPassword;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: _registerFormKey,
        child: Column(
          children: [
            CustomTextFormFeild(
              color: widget.mainColor,
              icon: const Icon(Icons.person),
              hintText: 'Full Name',
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'enter your name please';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextFormFeild(
                color: widget.mainColor,
                icon: const Icon(Icons.email),
                hintText: 'Your Email',
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'enter your email please';
                  } else {
                    return null;
                  }
                }),
            const SizedBox(
              height: 8,
            ),
            CustomTextFormFeild(
                color: widget.mainColor,
                icon: const Icon(Icons.phone),
                hintText: 'Your Phone',
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'enter your phone number please';
                  } else {
                    return null;
                  }
                }),
            const SizedBox(
              height: 8,
            ),
            GenderTextField(
              color: widget.mainColor,
            ),
            if (widget.mainColor != null)
              const SizedBox(
                height: 8,
              ),
            if (widget.mainColor != null)
              DoctorTypeField(
                color: widget.mainColor,
              ),
            const SizedBox(
              height: 8,
            ),
            CustomTextFormFeild(
                color: widget.mainColor,
                icon: const Icon(Icons.lock_outline),
                hintText: 'Password',
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'enter your password';
                  } else {
                    password = value;
                    return null;
                  }
                }),
            const SizedBox(
              height: 8,
            ),
            CustomTextFormFeild(
                color: widget.mainColor,
                icon: const Icon(Icons.lock_outline),
                hintText: 'Confirm Password',
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please confirm your password';
                  } else {
                    confirmPassword = value;
                    return null;
                  }
                }),
            const SizedBox(
              height: 27,
            ),
            CustomButton(
              color: widget.mainColor ?? AppColors.mainColor,
              title: 'Sign Up',
              onTap: () {
                if (_registerFormKey.currentState!.validate()) {
                  if (password != confirmPassword) {
                    showPasswordSnackBar(context);
                  }
                }
              },
            )
          ],
        ),
      ),
    );
  }

  void showPasswordSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text(
        'Passwords does not match!',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: AppColors.splashColor,
    ));
  }
}
