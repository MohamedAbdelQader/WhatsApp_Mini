import 'package:flutter/material.dart';
import 'package:mini_whatsapp/core/constants/asset_images/asset_images.dart';

class LogoWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Image.asset(AssetImages.logo,
      width: 300,
      height: 250,),
    );
  }
}
