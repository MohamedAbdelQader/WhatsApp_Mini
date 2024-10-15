import 'package:flutter/material.dart';
import 'package:mini_whatsapp/core/shared_widgets/custom_textfield.dart';

class EmailField extends StatelessWidget {
   TextEditingController emailController=TextEditingController();
   EmailField({super.key,required this.emailController});

  @override
  Widget build(BuildContext context) {
    return customTextField(
      type: TextInputType.emailAddress,
      label: "Enter Your Email",
      hint: "Your Email",
      prefix: Icons.email_outlined,
      controller: emailController,
      validate: (value){
        if(value == null || value.toString().isEmpty){
          return "Email must not be Empty";
        }else if(!(value.toString().contains("@"))){
          return "Enter Valid Email";
        }else {return null;}
      }
    );
  }
}
