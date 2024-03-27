import 'package:doctor_app/constants.dart';
import 'package:doctor_app/core/widgets/custom_back_ground_container.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/features/on_boarding/views/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        childWidget: Scaffold(
            backgroundColor: Colors.transparent, body: OnBoardingViewBody()));
  }
}
