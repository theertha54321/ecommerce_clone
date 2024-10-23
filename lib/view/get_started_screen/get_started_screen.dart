import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/utils/image_constants.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          
          
          image: DecorationImage(
            
            fit: BoxFit.cover,
            image: AssetImage(ImageConstants.GETSTARTEDIMAGE)
      )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 350,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [ColorConstants.PRIMARY1.withOpacity(0),
              ColorConstants.PRIMARY1.withOpacity(.5),
              ColorConstants.PRIMARY1.withOpacity(.7),
              ColorConstants.PRIMARY1.withOpacity(1),
              
              ])
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 70,bottom: 34,left: 37,right: 37),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    "You want Authentic, here you go!",
                    style: GoogleFonts.montserrat( color: ColorConstants.PRIMARY7,fontSize: 34,fontWeight: FontWeight.w600),
                    
                    
                    ),
                    SizedBox(height: 14,),
                    Text(
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    "Find it here,buy it now",
                    style: GoogleFonts.montserrat( color: ColorConstants.PRIMARY7,fontSize: 14),
                    
                    
                    ),
                    SizedBox(height: 44,),
                    CustomButton(data: "Get Started",onButtonPressed: (){


                    },)
                ],
              ),
            ),
          )
        ],
      ),
      ),
        
      
    
    );
  }
}