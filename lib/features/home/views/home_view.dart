import 'package:doctor_app/core/widgets/custom_back_ground_container.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        childWidget: Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text('hi'),
      ),
    ));
  }
}
