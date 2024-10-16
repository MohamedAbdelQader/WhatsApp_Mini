import 'package:flutter/material.dart';
import 'package:mini_whatsapp/core/themes/colors/color_app.dart';
import 'package:mini_whatsapp/features/Auth/presentation/views/signup_view.dart';

class CutomSinupOrLogin extends StatelessWidget {
  String question;
  String solution;
  Widget navigatTo;
   CutomSinupOrLogin({required this.question,required this.solution,required this.navigatTo});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(question,
          style:TextStyle(
            fontSize: 18,
            color: Color(0xFF3D3C3C)
          ) ,),
        SizedBox(width: 4,),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> navigatTo));
          },

          child: Text(solution,
              style:TextStyle(
                  fontSize: 18,
                  color: ColorApp.primaryColor
              ) ),
        )
      ],
    );
  }
}
