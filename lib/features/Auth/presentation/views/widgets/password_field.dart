import 'package:flutter/material.dart';
import 'package:mini_whatsapp/core/shared_widgets/custom_textfield.dart';

class PasswordField extends StatefulWidget {
  TextEditingController passwordController=TextEditingController();
  PasswordField({required this.passwordController});

  @override
  State<PasswordField> createState() => _PasswordFieldState(passwordController: passwordController);
}

class _PasswordFieldState extends State<PasswordField> {
  TextEditingController passwordController=TextEditingController();
  _PasswordFieldState({required this.passwordController});
   bool isPasswordVisibility=true;
  @override
  Widget build(BuildContext context) {
    return customTextField(
      controller: passwordController,
        type: TextInputType.text,
      label: "Enter Your Password",
      hint: "Your Password",
      prefix: Icons.lock,
      suffix: isPasswordVisibility?Icons.visibility:Icons.visibility_off,
      pressed: toggleVisibility,
      isObscure:isPasswordVisibility,
      validate: (value){
        if(value.toString().isEmpty || value == null){
          return "Password should't be empty";
        }else if( value.toString().length<8){
          return "Password must be at least 8 characters";
        }
      }
    );
  }

  void toggleVisibility(){
    setState(() {
      isPasswordVisibility=!isPasswordVisibility;
    });
  }
}
