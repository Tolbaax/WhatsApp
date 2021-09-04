import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/View/Screens/onBoarding.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
static String id='splashScreen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState()
  {
    super.initState();
    Timer(Duration(seconds: 3), ()
    {
      Navigator.popAndPushNamed(context, OnBoarding.id);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('WhatsApp',style:
        TextStyle(fontSize: 35,color: Colors.green,fontWeight: FontWeight.w600),),
        
      ),
    );
  }
}
