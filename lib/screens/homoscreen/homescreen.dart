import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/constants.dart';
import 'package:groceryapp/models/category.dart';
import 'package:groceryapp/screens/category/category.dart';
import '../../models/products.dart';
import 'components/product_card.dart';
import 'components/product_type.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //left: false,
      //right: false,
      appBar: buildAppBar(),
      body: SafeArea(
        bottom: false,
        top: true,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Catégories",
                        style: GoogleFonts.nunito(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.85),
                        )
                    ),
                    IconButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryScreen()
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_forward_outlined)
                    )
                  ],
                ),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 padding: EdgeInsets.only(right: 20),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      categorys.length,
                          (index) => CategoryHead(
                              category: categorys[index],
                            ),
                      ),
                  ),
               ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Products",
                        style: GoogleFonts.nunito(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.85),
                        )
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                Wrap(
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.start,
                  direction: Axis.horizontal,
                  spacing: 25,
                  runSpacing: 25,
                  children: List.generate(
                    products.length,
                        (index) => ProdutCard(
                        product: products[index]
                    ),
                  ),
                )
              ],
            ),

          ),
        ),
      ),
      // ),

      //), child: null,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      toolbarHeight: 65,
      toolbarOpacity: 0,
      shadowColor: kPrimaryColor,
      leadingWidth: 0,
      backgroundColor: kMainColor,
      title: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Good Morning",
                style: GoogleFonts.nunito(
                  fontSize: 25,
                  fontWeight: FontWeight.w200,
                  color: Colors.white.withOpacity(0.85),
                )
            ),
            Text(
                "All Flutter Team",
              style: GoogleFonts.nunito(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.85),
            )
            )
          ],
        ),
      ),
    );
  }
}
