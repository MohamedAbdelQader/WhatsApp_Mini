import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_whatsapp/core/shared_widgets/custom_button.dart';
import 'package:mini_whatsapp/features/home/presentation/HomeScreen.dart';

class LoginButton extends StatelessWidget {
  // TextEditingController emailController=TextEditingController();
  // TextEditingController passwordController=TextEditingController();
  GlobalKey<FormState> formKey=GlobalKey();

  LoginButton({super.key,
    required this.formKey
    // required this.passwordController,
    // required this.emailController
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(text: "Login", func: (){
      if(formKey.currentState!.validate()){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen()));
      }
    });
  }
}
