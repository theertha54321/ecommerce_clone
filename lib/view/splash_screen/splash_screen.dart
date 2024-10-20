
import 'dart:async';

import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/utils/image_constants.dart';
import 'package:ecommerce_clone/view/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
      OnboardingScreen()
      ));
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Image.asset(
              ImageConstants.MyAPPLOGO,
              height: 100,
              width: 124.99,
              fit: BoxFit.fill,
              ),
              SizedBox(width: 9,),
              Text("Stylish",style: GoogleFonts.libreCaslonText(

                fontSize: 40,
                color: ColorConstants.PRIMARY,
                fontWeight: FontWeight.bold 
              ),)
          ],
        ),
      )
    );
  }
}