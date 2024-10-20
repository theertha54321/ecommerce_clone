import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_button.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_input_field.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 19,horizontal: 26),
        child: SafeArea(
          child: Column(
           
            children: [
              Text("Create an account",
              style: GoogleFonts.montserrat( 
                fontWeight: FontWeight.w600,
                fontSize: 36,
                color: ColorConstants.PRIMARY1
              ),
              ),
              SizedBox(height: 36,),
              custom_input_field(hintText: "Username or Email",prefixIcon: Icons.person,),
              SizedBox(height: 31,),
              custom_input_field(hintText: "Password",prefixIcon: Icons.lock,suffixIcon: Icons.visibility,),
              SizedBox(height: 31),
              custom_input_field(hintText: "Confirm Password",prefixIcon: Icons.lock,suffixIcon: Icons.visibility,),
              SizedBox(height: 19,),
              Row(
                children: [
                  Text("By clicking the",style: GoogleFonts.montserrat( fontSize: 12,color: ColorConstants.PRIMARY5),),
                  SizedBox(width: 5,),
                  Text("Register",style: GoogleFonts.montserrat( fontSize: 12,color: ColorConstants.PRIMARY10),),
                  SizedBox(width: 5,),
                  Text("button, you agree to the public offer",style: GoogleFonts.montserrat( fontSize: 12,color: ColorConstants.PRIMARY5),),

                  
                ],
              ),
              SizedBox(height: 38,),
              CustomButton(data: "Create Account"),
              SizedBox(height: 40,),
              CustomLogin(datas: "Login",),
              


          
            ],
          ),
        ),
      ),
    );
  }
}