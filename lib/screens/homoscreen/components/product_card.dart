import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/constants.dart';
import 'package:groceryapp/models/products.dart';
import 'package:groceryapp/screens/details/details_product.dart';

/*
class ProdutCard extends StatefulWidget{
   const ProdutCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;
  @override
  _ProdutCardState createState() => _ProdutCardState();
}
class _ProdutCardState extends State<ProdutCard> {
*/
 
class ProdutCard extends StatelessWidget{
   const ProdutCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;
  //final Product product = products;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsProductsScreen(product: product,)
          ),
        );
      },
      child: Container(
        //padding: const EdgeInsets.all(15),
        //margin: const EdgeInsets.only(right: 15),
        width: 160,
        height: 180,
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
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Center(child: Image.asset(product.image)),
                ),
                Positioned(
                    top: 0,
                    left: 0,
                    child: IconButton(
                      onPressed: () {  },
                      icon: const Icon(Icons.favorite),
                      color:  kMainColor.withOpacity(0.1),
                      //color: product.liked ? kMainColor : Colors.black.withOpacity(0.2),
                    ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                          product.title,
                          style: GoogleFonts.nunito(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.85),
                          )
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          '\$ ${product.price}',
                          style: GoogleFonts.nunito(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.85),
                          )
                      ),
                      Text(
                          'ADD TO CART',
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.red.withOpacity(0.85),
                          )
                      ),
                    ],
                  ),
                /*  InkWell(
                    onTap: (){
                      debugPrint("Added to cart");
                    },
                    child: Container(
                      //width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        //borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text(
                          'ADD TO CART',
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.red.withOpacity(0.85),
                          )
                      ),
                    ),
                  ) */
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
