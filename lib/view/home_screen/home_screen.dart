import 'package:ecommerce_clone/dummy_db/dummy_db.dart';
import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/utils/image_constants.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            child: Icon(Icons.menu,size: 24,),
          ),
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              ImageConstants.MyAPPLOGO,
              height: 31,
              width: 38,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 9,),
            Text("Stylish",
            style: GoogleFonts.libreCaslonText( fontSize: 18,
            fontWeight: FontWeight.bold,color: Colors.blue),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CircleAvatar(radius: 20,
            backgroundImage: AssetImage(ImageConstants.CAVIMAGE),
            ),
          )
        ],
      ),
      body: Column(
        children: [




          //section 1

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomSearch(),
          ),





          //section 2
          _buildAllFeatured()
        ],
      ),
    );
  }

  Column _buildAllFeatured() {
    return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text("All Featured",style: GoogleFonts.montserrat(color: ColorConstants.PRIMARY1,fontSize: 18,fontWeight: FontWeight.bold ),),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorConstants.PRIMARY6,
                      borderRadius: BorderRadius.circular(6),
                      
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                    // height: 24,
                    // width: 61,
                    child: Row(
                      children: [
                        Text("Sort",style: GoogleFonts.montserrat( fontSize: 12),),
                        Icon(Icons.swap_vert)
                      ],
                    ),
                  ),
                  SizedBox(width: 12,),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorConstants.PRIMARY6,
                      borderRadius: BorderRadius.circular(6),
                      
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                    // height: 24,
                    // width: 61,
                    child: Row(
                      children: [
                        Text("Filter",style: GoogleFonts.montserrat( fontSize: 12),),
                        Icon(Icons.filter_alt_outlined)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  8,(index)=>Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      
                      children: [
                        CircleAvatar(
                         backgroundImage: NetworkImage(DummyDb.featuredItemList[index]["imageUrl"]),
                          radius: 30,),
                        SizedBox(height: 4,),
                        Text(DummyDb.featuredItemList[index]["name"],
                        style: GoogleFonts.montserrat(color: ColorConstants.PRIMARY12,fontSize: 10 ),
                        ),
                       
                                  
                        
                      ]
                              
                                  
                                  ),
                  )
                        
                  ),
                  
                  
                      ),
            ),
          ]
    );
        
  }
}