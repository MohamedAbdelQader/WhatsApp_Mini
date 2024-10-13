import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'features/Splash/SplashScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini What’s App ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        textTheme: GoogleFonts.interTextTheme(),
        useMaterial3: true,
      ),
      home:SplashScreen()
    );
  }
}

