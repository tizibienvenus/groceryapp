import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/constants.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      //left: false,
      //right: false,
      body: SafeArea(
        bottom: false,
        //top: false,
        child: Container(
          child: Center(
            child: Text(
              "Cart List Page",
                style: GoogleFonts.nunito(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.85),
                )
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
        child: Center(
            child: Text(
                "Cart List",
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
