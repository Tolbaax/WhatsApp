import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/View/Screens/HomeScreen.dart';
class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);
static String id='onBoarding';

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

          child: InkWell(
              onTap: ()
              {
                Navigator.popAndPushNamed(context, HomeScreen.id);
              },
              child: Text('onBoarding',style:
              TextStyle(fontSize: 35,color: Colors.green,fontWeight: FontWeight.w600),))
      ),
    );
  }
}
