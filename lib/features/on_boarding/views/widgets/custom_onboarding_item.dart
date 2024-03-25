import 'package:doctor_app/core/utils/app_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomOnBoardingItem extends StatelessWidget {
  const CustomOnBoardingItem(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: SizedBox(
            height: height * .45,
            child: SvgPicture.asset(
              image,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(title, style: AppTextStyles.styleBold24),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.styleMedium18,
          ),
        ),
      ],
    );
  }
}
