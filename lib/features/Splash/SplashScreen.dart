import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_whatsapp/core/constants/asset%20images/asset_images.dart';
import 'package:mini_whatsapp/core/themes/colors/color_app.dart';
import 'dart:async';
import 'package:mini_whatsapp/features/home/presentation/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(
                top: 200
              ),
                child: Column(
                  children: [
                    Image.asset(
                      AssetImages.logo,
                      width: 250,
                    ),
                    Text('Whats App',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 54,
                        fontWeight: FontWeight.bold,
                        color: ColorApp.secondaryColor,
                      ),
                    ),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Center(
              child: Text('The best chat app of this century',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.black
                )
              ),),
            ),
          )
        ],
      ),
    );
  }
}
