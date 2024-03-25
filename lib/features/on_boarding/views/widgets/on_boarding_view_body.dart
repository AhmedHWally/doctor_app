import 'package:doctor_app/core/utils/app_styles/app_colors.dart';
import 'package:doctor_app/features/on_boarding/views/widgets/custom_onboarding_item.dart';
import 'package:doctor_app/features/on_boarding/views/widgets/on_boarding_buttons_section.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late final PageController onBoardingController;
  bool isLastPage = false;

  @override
  void initState() {
    onBoardingController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    onBoardingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: PageView(
          controller: onBoardingController,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: pageViewItems,
        )),
        SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              color: AppColors.mainColor,
              child: OnBoardingButtonsSection(
                  onBoardingController: onBoardingController,
                  isLastPage: isLastPage),
            ))
      ],
    );
  }

  final List<Widget> pageViewItems = const [
    CustomOnBoardingItem(
      image: 'assets/images/onBoardingOne.svg',
      title: 'We are at your service',
      subtitle: 'Don\'t worry, you are in safe hands',
    ),
    CustomOnBoardingItem(
      image: 'assets/images/onBoardingTwo.svg',
      title: 'We have your treatment',
      subtitle: 'We do our best to find the best treatments for our patients',
    ),
    CustomOnBoardingItem(
      image: 'assets/images/onBoardingThree.svg',
      title: 'Medical articles every day',
      subtitle: 'Patients can read and benefit from our medical articles',
    ),
  ];
}
