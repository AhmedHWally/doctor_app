import 'package:doctor_app/constants.dart';
import 'package:doctor_app/core/widgets/custom_back_ground_container.dart';
import 'package:doctor_app/features/auth/views/widgets/login_widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      childWidget: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: LoginviewBody()),
      ),
    );
  }
}
