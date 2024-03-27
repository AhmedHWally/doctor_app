import 'package:doctor_app/constants.dart';
import 'package:doctor_app/features/auth/views/widgets/register_widgets/register_view_body.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackGroundImage), fit: BoxFit.cover)),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: RegisterViewBody()),
      ),
    );
  }
}
