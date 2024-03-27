import 'package:doctor_app/core/utils/app_styles/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class UserOrDoctorButtonAndWelcomeText extends StatefulWidget {
  const UserOrDoctorButtonAndWelcomeText({
    super.key,
    this.isLogin = true,
    required this.isDoctor,
  });
  final bool isLogin;
  final Function(bool) isDoctor;

  @override
  State<UserOrDoctorButtonAndWelcomeText> createState() =>
      _UserOrDoctorButtonAndWelcomeTextState();
}

class _UserOrDoctorButtonAndWelcomeTextState
    extends State<UserOrDoctorButtonAndWelcomeText> {
  bool isUser = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.isLogin
              ? isUser
                  ? 'Welcome Back User'
                  : 'Welcome Back Doctor'
              : isUser
                  ? 'Welcome to our family User'
                  : 'Welcome to our family Doctor',
          style: AppTextStyles.styleBold14
              .copyWith(color: AppColors.mainColor, fontSize: 18),
        ),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Expanded(
                  child: SizedBox(
                height: 45,
                child: TextButton(
                  onPressed: isUser
                      ? null
                      : () {
                          widget.isDoctor(false);
                          setState(() {
                            isUser = true;
                          });
                        },
                  style: TextButton.styleFrom(
                      backgroundColor: isUser
                          ? AppColors.splashColor
                          : Colors.grey.withOpacity(0.5),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              topLeft: Radius.circular(8)))),
                  child: Text(
                    'User',
                    style: TextStyle(
                        color: isUser ? Colors.white : AppColors.splashColor),
                  ),
                ),
              )),
              Expanded(
                  child: SizedBox(
                height: 45,
                child: TextButton(
                    onPressed: !isUser
                        ? null
                        : () {
                            widget.isDoctor(true);
                            setState(() {
                              isUser = false;
                            });
                          },
                    style: TextButton.styleFrom(
                        backgroundColor: !isUser
                            ? AppColors.doctorColor
                            : Colors.grey.withOpacity(0.5),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8)))),
                    child: Text(
                      'Doctor',
                      style: TextStyle(
                          color:
                              !isUser ? Colors.white : AppColors.splashColor),
                    )),
              ))
            ],
          ),
        ),
      ],
    );
  }
}
