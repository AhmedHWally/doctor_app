import 'package:doctor_app/constants.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key, this.onPressed, required this.buttonTitle});
  final void Function()? onPressed;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: Text(
          buttonTitle,
          style: const TextStyle(
              fontSize: 22,
              color: Colors.white,
              shadows: [
                Shadow(offset: Offset(1, 1), color: Colors.black, blurRadius: 1)
              ],
              fontWeight: FontWeight.w600,
              fontFamily: kMainFontFamily),
        ));
  }
}
