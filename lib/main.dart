import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/View/Screens/HomeScreen.dart';
import 'package:whatsapp/View/Screens/onBoarding.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();


  runApp(

      EasyLocalization(
          child: WhatsApp(),
          supportedLocales: [
            Locale('en')
            ,Locale('ar')
          ],
          path: 'lang',
        fallbackLocale: Locale('en'),
      ),
  );
}
class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      supportedLocales: context.supportedLocales,

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

