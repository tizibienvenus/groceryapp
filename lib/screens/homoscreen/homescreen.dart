import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //left: false,
      //right: false,
      appBar: buildAppBar(),
      body: SafeArea(
        bottom: false,
        //top: false,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Catégories",
                  style: GoogleFonts.nunito(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.85),
                  )
              )
            ],
          ),
        ),
      ),
      // ),

      //), child: null,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 65,
        toolbarOpacity: 0,
        shadowColor: kPrimaryColor,
      backgroundColor: kPrimaryColor,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Good Morning",
              style: GoogleFonts.nunito(
                fontSize: 25,
                fontWeight: FontWeight.w200,
                color: Colors.black.withOpacity(0.85),
              )
          ),
          Text(
              "All Flutter Team",
            style: GoogleFonts.nunito(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(0.85),
          )
          )
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("data")
          ],
        ),
      ]
    );
  }
}
