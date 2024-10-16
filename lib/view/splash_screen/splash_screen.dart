import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Image.asset(
              height: 100,
              width: 124.99,
              "assets/images/Group 34010.png"),
              SizedBox(width: 9,),
              Text("Stylish",style: TextStyle(color: Colors.red,fontSize: 40,fontWeight: FontWeight.bold),)
          ],
        ),
      )
    );
  }
}