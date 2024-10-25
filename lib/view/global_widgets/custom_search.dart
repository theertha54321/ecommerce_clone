import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          offset: Offset(0,2),
          blurRadius: 9,
          color: ColorConstants.PRIMARY1.withOpacity(.1)
        )
      ]),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorConstants.PRIMARY7,
          border: OutlineInputBorder(borderSide: BorderSide.none),
          suffixIcon: Icon(Icons.mic_none,
          color: ColorConstants.PRIMARY11,),
          prefixIcon: Icon(Icons.search,
          color: ColorConstants.PRIMARY11,),
          hintText: "Search any Product..",hintStyle: GoogleFonts.montserrat( fontSize: 14,color: ColorConstants.PRIMARY11)
        ),
      ),
    );
  }
}