import 'package:flutter/material.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/widgets/signup_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignupBody(),
    );
  }
}
