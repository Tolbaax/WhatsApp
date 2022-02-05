import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatsapp/View/Screens/HomeScreen.dart';
import 'package:whatsapp/View/Screens/onBoarding.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

String language = 'EN';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.getInstance().then((instance)
  {
    language = instance.getString('language')!;
    runApp(WhatsApp());
  });
}
class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: 'images/Whatsapp.png',
        splashIconSize: 100,
        nextScreen: OnBoarding(),
        splashTransition: SplashTransition.fadeTransition,
      ),
      routes:
      {
        OnBoarding.id:(context)=>OnBoarding(),
        HomeScreen.id:(context)=>HomeScreen(),
      },
    );
  }
}

