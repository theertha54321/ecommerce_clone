import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onButtonPressed;
   final String data;
    const CustomButton({
    required this.data,this.onButtonPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
  onTap:onButtonPressed,
        
      
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstants.PRIMARY,
          borderRadius: BorderRadius.circular(10)
        ),
      
        height: 55,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 15.5),
          child: Text(
            
            textAlign: TextAlign.center, data ,style: GoogleFonts.montserrat(color: ColorConstants.PRIMARY7,fontSize: 20,fontWeight: FontWeight.w600 ),
            ),
          ),
         ),
    );
  }
}

