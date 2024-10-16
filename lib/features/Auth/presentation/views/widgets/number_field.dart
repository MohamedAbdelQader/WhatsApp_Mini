import 'package:flutter/material.dart';
import 'package:mini_whatsapp/core/shared_widgets/custom_textfield.dart';

class NumberField extends StatelessWidget {
  TextEditingController numberController=TextEditingController();
  NumberField({super.key,required this.numberController});

  @override
  Widget build(BuildContext context) {
    return customTextField(
        type: TextInputType.number,
        label: "Enter Your Number",
        hint: "Your Number",
        prefix: Icons.phone_android_outlined,
        controller: numberController,
        validate: (value){
          if(value == null || value.toString().isEmpty){
            return "Number must not be Empty";
          }else if(value.toString().length>11||value.toString().length<11){
            return "Enter Valid Number";
          }else {return null;}
        }
    );
  }
}
