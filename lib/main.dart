import 'package:flutter/material.dart';
import 'package:whatsapp/View/Screens/HomeScreen.dart';
import 'package:whatsapp/View/Screens/onBoarding.dart';
import 'package:whatsapp/View/Screens/splashScreen.dart';
void main()
{
  runApp(WhatsApp());
}
class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: SplashScreen(),
      routes:
      {
        OnBoarding.id:(context)=>OnBoarding(),
        HomeScreen.id:(context)=>HomeScreen(),
      },
    );
  }
}

