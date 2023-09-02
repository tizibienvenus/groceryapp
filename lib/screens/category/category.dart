import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/constants.dart';
import 'package:groceryapp/screens/category/components/category_card.dart';
import '../../models/category.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //left: false,
      //right: false,
      appBar: buildAppBar(),
      body: SafeArea(
        //bottom: true,
        //top: true,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 30),
            child: Column(
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  spacing: 25,
                  runSpacing: 25,
                  children: List.generate(
                    categorys.length,
                        (index) => CategoryCard(
                      category: categorys[index],
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
      backgroundColor: kMainColor,
      elevation: 0,
      centerTitle: false,
      title: Text(
          'Categories',
          style: GoogleFonts.nunito(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(0.85),
          )
      ),
      /*actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: () {},
        ),
      ],*/
    );
  }
}
