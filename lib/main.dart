import 'package:flutter/material.dart';
import 'package:whatsapp/View.Screens/homeScreen.dart';
void main()
{
  runApp(WhatsApp());
}
class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: HomeScreen(),
    );
  }
}

