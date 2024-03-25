import 'package:doctor_app/constants.dart';
import 'package:doctor_app/features/on_boarding/views/on_boarding_view.dart';
import 'package:doctor_app/core/utils/app_styles/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage('assets/images/background.jpg'), context);
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnBoardingView()));
    });

    return Scaffold(
      backgroundColor: AppColors.splashColor,
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(kSplashImage),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Medics',
              style: AppTextStyles.styleBold50,
            )
          ],
        ),
      ),
    );
  }
}
