import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/constants.dart';
import 'package:groceryapp/constants.dart';
import 'package:groceryapp/models/category.dart';


class CategoryCard extends StatelessWidget{
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;
  //final Product product = products;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        /*Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsProductsScreen()
          ),
        );*/
      },
      child: Container(
        //padding: const EdgeInsets.all(15),
        //margin: const EdgeInsets.only(right: 15),
        width: 160,
        height: 150,
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                  offset: Offset.infinite,
                  color: Colors.black,
                  blurStyle: BlurStyle.inner,
                  blurRadius: 2,
                  spreadRadius: 0.1
              )
            ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(category.image),
            const SizedBox(height: 20,),
            Text(
                category.title,
                style: GoogleFonts.nunito(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: kMainColor.withOpacity(0.85),
                )
            )
          ],
        ),
      ),
    );
  }
}
