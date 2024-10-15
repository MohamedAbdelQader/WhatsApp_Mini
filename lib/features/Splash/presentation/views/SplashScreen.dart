import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_whatsapp/core/constants/asset_images/asset_images.dart';
import 'package:mini_whatsapp/core/themes/colors/color_app.dart';
import 'package:mini_whatsapp/features/home/presentation/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 3), () {
  //     Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(builder: (context) => HomeScreen()),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4CB050),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(
                top: 300
              ),
                child: Column(
                  children: [
                    Image.asset(
                      AssetImages.logo,
                      width: 200,
                    ),
                    Text('What\'s App',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: ColorApp.primaryColor,
                      ),
                    ),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('The best chat app of this century',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        )
                    ),),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorApp.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                        )

                      ),
                        onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Text("Continue",style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,

                          ),),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
