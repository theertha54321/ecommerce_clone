import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class custom_input_field extends StatelessWidget {

String? hintText;
IconData? prefixIcon;
IconData? suffixIcon;


   custom_input_field({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorConstants.PRIMARY6,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Icon(suffixIcon),
        hintText: hintText,
        hintStyle: 
        GoogleFonts.montserrat( 
          color: ColorConstants.PRIMARY5,
          fontSize: 12,
          fontWeight: FontWeight.w500
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: ColorConstants.PRIMARY3
          )
        )
      ),
    );
  }
}