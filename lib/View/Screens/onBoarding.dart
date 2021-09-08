import 'package:flutter/material.dart';
import 'package:whatsapp/View/Screens/HomeScreen.dart';
import 'package:google_fonts/google_fonts.dart';
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
      body: Container(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(60),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/Whatsapp2.jpg'),
                  radius: 150,
                ),
              ),
            ),
            Center(child: Text('Welcome To WhatsApp',style:
            TextStyle(fontSize: 28,fontWeight: FontWeight.w600),),),
            SizedBox(
              height: 20,
            ),
            Text("Read our Privacy Policy.Tap 'Agree & Continue'to",style:
            TextStyle(color: Colors.grey[600],fontSize: 16),),
            Text('accept the Terms of Service',style:
            TextStyle(color: Colors.grey[600],fontSize: 16),),

            Padding(
              padding: const EdgeInsets.only(top: 70,left: 40,right: 40,),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: InkWell(
                  onTap: ()
                  {
                    Navigator.popAndPushNamed(context, HomeScreen.id);
                  },
                  child: Text('Agree & Continue',style:
                  TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w600),),
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  Text('from',style: TextStyle(color: Colors.grey[600],fontSize: 17),),
                  Text('Mohamed Tolba',style: GoogleFonts.acme(color: Colors.green[600],fontSize: 20),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
