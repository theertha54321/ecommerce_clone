import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_button.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_input_field.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 19,horizontal: 26),
        child: SafeArea(
          child: Column(
           
            children: [
              Text("Forgot password?",
              style: GoogleFonts.montserrat( 
                fontWeight: FontWeight.w600,
                fontSize: 36,
                color: ColorConstants.PRIMARY1
              ),
              ),
              SizedBox(height: 36,),
              custom_input_field(hintText: "Enter your email address",prefixIcon: Icons.person,),
              
              SizedBox(height: 9),
              Row(
                children: [
                  Text("*",style: GoogleFonts.montserrat( color:ColorConstants.PRIMARY10 ),),
                
              
              SizedBox(width: 5,),
              Text("We will send you a message to set or reset your new password",style: GoogleFonts.montserrat( color: ColorConstants.PRIMARY5),),
                ]
              ),
              SizedBox(height: 26,),
              CustomButton(data: "Submit",),
              
              


          
            ],
          ),
        ),
      ),
    );
  }
}
