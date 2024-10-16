import 'package:flutter/material.dart';
import 'package:mini_whatsapp/core/shared_widgets/custom_textfield.dart';

class NameField extends StatelessWidget {
   TextEditingController nameController=TextEditingController();
   NameField({super.key,required this.nameController});

  @override
  Widget build(BuildContext context) {
    return customTextField(
      type: TextInputType.text,
      label: "Enter Your Name",
      hint: "Your Name",
      prefix: Icons.person,
      controller: nameController,
      validate: (value){
        if(value == null || value.toString().isEmpty){
          return "name must not be Empty";
        }else {return null;}
      }
    );
  }
}
