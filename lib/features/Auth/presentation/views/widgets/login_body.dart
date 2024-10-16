import 'package:flutter/material.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/signup_view.dart';
import 'package:mini_whatsapp/core/shared_widgets/cutom_sinup_or_login.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/widgets/email_field.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/widgets/login_button.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/widgets/login_title.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/widgets/logo_widget.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/widgets/password_field.dart';

class LoginBody extends StatelessWidget {
  TextEditingController emailController=TextEditingController();
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
              LoginTitle(),
              SizedBox(height: 25,),
              EmailField(emailController:emailController ,),
              SizedBox(height: 20,),
              PasswordField(passwordController: passwordController,),
              SizedBox(height: 20,),
              LoginButton(formKey:_formKey),
              SizedBox(height: 20,),
              CutomSinupOrLogin(question: "Don't have an account?  ",solution: "Register here",navigatTo: SignupView(),)




            ],
          ),
        ),
      ),
    );
  }
}
