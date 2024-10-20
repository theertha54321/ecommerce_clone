import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/utils/image_constants.dart';
import 'package:ecommerce_clone/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 17),
          child: Row(
            children: [
              Text("1",style: 
              GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: ColorConstants.PRIMARY1
              )
              
              ),
              Text("/3",style: 
              GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: ColorConstants.PRIMARY2
              )
              
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17),
            child:  InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder:(context)=>LoginScreen(),
                  
                  ));
              },
              child: Text("Skip",style: 
              GoogleFonts.montserrat(
                color: ColorConstants.PRIMARY1,
                fontWeight: FontWeight.w600,
                fontSize: 18
              
              )
              ),
            )
          )
        ],
        
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 22),
        child: Center(
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(ImageConstants.ONBOARDIMAGE,
              height: 300,
              width: 300,
              fit: BoxFit.fill,
              ),
              SizedBox(height: 15,),
              Text("Choose Products",style: 
              GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: ColorConstants.PRIMARY1
              )
              ),
              SizedBox(height: 10,),
              Text(
                
                maxLines: 3,
                textAlign: TextAlign.center,
                // overflow: TextOverflow.ellipsis,
                
                "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w600,color: ColorConstants.PRIMARY3,))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 19,vertical: 24),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Text("Prev",
            style: GoogleFonts.montserrat( 
              color: ColorConstants.PRIMARY4,
              fontWeight: FontWeight.w600,
              fontSize: 18
            ),),
            Text("Next",
            style: GoogleFonts.montserrat( 
              color: ColorConstants.PRIMARY,
              fontWeight: FontWeight.w600,
              fontSize: 18
            ),)
          ],
        ),
      ),
    );
  }
}