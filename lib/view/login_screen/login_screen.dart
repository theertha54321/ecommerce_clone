import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/view/forgot_password_screen/forgot_password_screen.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_button.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_input_field.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 19,horizontal: 26),
        child: SafeArea(
          child: Column(
           
            children: [
              Text("Welcome back!",
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
              SizedBox(height: 9),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                  builder:(context)=>ForgotPasswordScreen(),
                  
                  ));
                    },
                    child: Text("Forgot password",style: GoogleFonts.montserrat( color: ColorConstants.PRIMARY,fontSize: 12),)),
                ],
              ),
              SizedBox(height: 52,),
              CustomButton(data: "Login",),
              SizedBox(height: 75,),
              CustomLogin(datas: "Sign Up",),
              


          
            ],
          ),
        ),
      ),
    );
  }
}

