import 'package:doctor_app/constants.dart';
import 'package:doctor_app/core/utils/app_styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomLogoContainer extends StatelessWidget {
  const CustomLogoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: AppColors.splashColor)),
            child: SvgPicture.asset(
              kSplashImage,
              colorFilter:
                  const ColorFilter.mode(AppColors.mainColor, BlendMode.srcIn),
            ),
          ),
        ],
      ),
    );
  }
}
