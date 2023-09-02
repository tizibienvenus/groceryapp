import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/constants.dart';
import 'package:groceryapp/models/products.dart';


class FavoriteCard extends StatelessWidget{
  const FavoriteCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;
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
        margin: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding / 2,
        ),
        //padding: const EdgeInsets.all(15),
        //margin: const EdgeInsets.only(right: 15),
        width: MediaQuery.of(context).size.width,
        height: 120,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Image.asset(product.image),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            product.title,
                            style: GoogleFonts.nunito(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF000000).withOpacity(0.85),
                            )
                        ),
                        Text(
                            '\$${product.price}',
                            style: GoogleFonts.nunito(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: kMainColor.withOpacity(0.85),
                            )
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 35,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD9D9D9).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                                'Add to cart',
                                style: GoogleFonts.nunito(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.85),
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
