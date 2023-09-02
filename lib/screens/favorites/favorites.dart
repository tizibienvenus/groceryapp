import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/constants.dart';
import 'package:groceryapp/models/products.dart';
import 'components/favorite_card.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      //left: false,
      //right: false,
      body: SafeArea(
        bottom: false,
        //top: false,
        child: Expanded(
          //margin: const EdgeInsets.only(top: 70),
          child: ListView.builder(
    // here we use our demo procuts list
            itemCount: products.length,
            itemBuilder: (context, index) => FavoriteCard(
              product: products[index],
            ),
          ),
        ),
       ),

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
        child: Center(
          child: Text(
              "Favorite\'s",
              style: GoogleFonts.nunito(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.85),
              )
          )
        ),
      ),
    );
  }
}
