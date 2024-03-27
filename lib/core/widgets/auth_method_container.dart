import 'package:doctor_app/core/utils/app_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthMethodContainer extends StatelessWidget {
  const AuthMethodContainer({
    super.key,
    required this.svgImagePath,
    required this.authMethodName,
  });
  final String svgImagePath;
  final String authMethodName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        child: Row(children: [
          SvgPicture.asset(svgImagePath),
          const Spacer(),
          Text(
            authMethodName,
            style: AppTextStyles.styleBold14,
          ),
          const Spacer()
        ]),
      ),
    );
  }
}
