import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_whatsapp/core/themes/colors/color_app.dart';

abstract  class Styles {
  static TextStyle textStyle24= TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w600,

  );
  static TextStyle textStyle10= TextStyle(
    color: ColorApp.primaryColor,
    fontSize: 15,
    fontWeight: FontWeight.w600,

  );
}