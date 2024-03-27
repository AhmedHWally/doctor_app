import 'package:doctor_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/features/on_boarding/views/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackGroundImage), fit: BoxFit.cover)),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: OnBoardingViewBody(),
      ),
    );
  }
}
