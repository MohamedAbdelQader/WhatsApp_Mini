import 'package:flutter/material.dart';
import 'package:mini_whatsapp/core/shared_widgets/cutom_sinup_or_login.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/login_view.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/signup_view.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/widgets/email_field.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/widgets/login_button.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/widgets/login_title.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/widgets/logo_widget.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/widgets/password_field.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/widgets/signup_button.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/widgets/signup_title.dart';

import 'name_field.dart';
import 'number_field.dart';

class SignupBody extends StatelessWidget {
  TextEditingController emailController=TextEditingController();
  TextEditingController nameController=TextEditingController();
  TextEditingController numberController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  GlobalKey<FormState> _formKey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogoWidget(),
              SignupTitle(),
              SizedBox(height: 25,),
              NameField(nameController:nameController ,),
              SizedBox(height: 20,),
              EmailField(emailController:emailController ,),
              SizedBox(height: 20,),
              NumberField(numberController: numberController),
              SizedBox(height: 20,),
              PasswordField(passwordController: passwordController,),
              SizedBox(height: 20,),
              SignupButton(formKey:_formKey),
              SizedBox(height: 20,),
              CutomSinupOrLogin(question: "Already have an account?  ",solution: "LogIn here",navigatTo: LoginView(),)




            ],
          ),
        ),
      ),
    );
  }
}
