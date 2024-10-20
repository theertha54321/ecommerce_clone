import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/view/product_screen/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
    String data;
    CustomButton({
    required this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstants.PRIMARY,
          borderRadius: BorderRadius.circular(10)
        ),
      
        height: 55,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 15.5),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder:(context)=>ProductScreen(),
                  
                  ));
            },
            child: Text(
              
              textAlign: TextAlign.center, data ,style: GoogleFonts.montserrat(color: ColorConstants.PRIMARY7,fontSize: 20,fontWeight: FontWeight.w600 ),
              ),
          ),
          ),
         ),
    );
  }
}

