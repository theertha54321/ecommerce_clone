import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/view/create_account_screen/create_account_screen.dart';
import 'package:ecommerce_clone/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLogin extends StatelessWidget {

  String datas;
   CustomLogin({
    required this.datas,
    super.key,
  });

  bool gotoFirst=true;

  @override
  Widget build(BuildContext context) {
    return Column(
        
        children: [
          Text("- OR Continue with -",style: GoogleFonts.montserrat( color: ColorConstants.PRIMARY8,fontSize: 12,fontWeight: FontWeight.w500),),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorConstants.PRIMARY)
                ),
                child:Image.asset(
                  height: 24,
                  width: 24,
                  "assets/images/google 1.png")
                
              ),
              SizedBox(width: 10,),
              Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorConstants.PRIMARY)
                ),
                child:Center(
                  child: FaIcon(FontAwesomeIcons.apple,
                  color: ColorConstants.PRIMARY1,
                  size: 28,
                  ),
                )
              ),
              SizedBox(width: 10,),
              Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorConstants.PRIMARY)
                ),
                child:Center(
                  child: FaIcon(FontAwesomeIcons.facebookF,
                  color: ColorConstants.PRIMARY9,
                  size: 26,
                  ),
                )
              ),
              
            ],
          ),
          SizedBox(height:32 ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                style: GoogleFonts.montserrat( color: ColorConstants.PRIMARY8,fontSize: 14),
                "Create An Account"),
              SizedBox(width: 5,),
              InkWell(
                onTap: (){
                  
                    if(gotoFirst){
                      Navigator.push(context, MaterialPageRoute(
                  builder:(context)=>CreateAccountScreen()
                  
                  ));
                    }
                    else{
                      Navigator.push(context, MaterialPageRoute(
                  builder:(context)=>LoginScreen()
                  
                  ));
                    }
                    
                  },
                  
              
                
                child: Text(
                  datas,
                  style: 
                  
                  GoogleFonts.montserrat( color: ColorConstants.PRIMARY,fontSize: 14,decoration: TextDecoration.underline,decorationColor: ColorConstants.PRIMARY),
                  ),
              )
            ],
          )
        ],
      );
  }
}

