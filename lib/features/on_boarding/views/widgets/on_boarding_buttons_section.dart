import 'package:doctor_app/core/widgets/custom_text_button.dart';
import 'package:doctor_app/features/auth/views/login_view.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingButtonsSection extends StatelessWidget {
  const OnBoardingButtonsSection({
    super.key,
    required this.onBoardingController,
    required this.isLastPage,
  });

  final PageController onBoardingController;
  final bool isLastPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: isLastPage
          ? CustomTextButton(
              buttonTitle: 'Get Started',
              onPressed: () async {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LoginView()));
                // final prefs = await SharedPreferences.getInstance();
                //  prefs.setBool('showHome', true);
              },
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextButton(
                    onPressed: () => onBoardingController.animateToPage(2,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut),
                    buttonTitle: 'Skip'),
                Center(
                  child: SmoothPageIndicator(
                    controller: onBoardingController,
                    count: 3,
                    effect: const WormEffect(
                        dotColor: Colors.black26,
                        spacing: 16,
                        activeDotColor: Colors.white,
                        dotHeight: 18,
                        dotWidth: 18),
                    onDotClicked: (index) => onBoardingController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut),
                  ),
                ),
                CustomTextButton(
                    onPressed: () => onBoardingController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut),
                    buttonTitle: 'Next')
              ],
            ),
    );
  }
}
