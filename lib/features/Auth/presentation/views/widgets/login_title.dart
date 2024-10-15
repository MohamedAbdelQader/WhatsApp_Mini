import 'package:flutter/material.dart';
import 'package:mini_whatsapp/core/themes/styles/styles.dart';

class LoginTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Text("Log in to your account",
    style: Styles.textStyle24,
    textAlign: TextAlign.center,
    );
  }
}
