import 'package:flutter/material.dart';
import 'package:mini_whatsapp/core/themes/styles/styles.dart';

class SignupTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Text("Register To New Account",
    style: Styles.textStyle24,
    textAlign: TextAlign.center,
    );
  }
}
