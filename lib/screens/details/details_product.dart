import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/constants.dart';
import 'package:groceryapp/generated/assets.dart';

import '../../components/textfield.dart';

class DetailsProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //left: false,
      //right: false,
      body: SafeArea(
        bottom: false,
        top: false,
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          child: Stack(
            //alignment: AlignmentDirectional.topEnd,
            children: [
              Image.asset(Assets.orange),
              Positioned(
                top: 320,
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  //height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(kDefaultPadding * 0),
                        topRight: Radius.circular(kDefaultPadding * 0)),
                    color: kPrimaryColor,
                    //color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            // Titre du fruit
                            Text(
                                "Fresh Orange",
                                style: GoogleFonts.nunito(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.85),
                                )
                            ),

                            // Button Ajouter au pannier
                            InkWell(
                              onTap: (){},
                              child: Container(
                                width: 150,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: kMainColor,
                                  borderRadius: BorderRadius.circular(kDefaultPadding * 2)
                                ),
                                child: Center(
                                  child: Text(
                                    'ADD TO CARD',
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            // prix du fruit
                            Text(
                              "\$4.9",
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: kMainColor
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              // Button moins
                              children: [
                                InkWell(
                                  onTap: (){},
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: kMainColor.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: const Icon(
                                        Icons.remove,
                                        color: kMainColor,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 30),

                                //npmbres des fruit à ajouter au pannier
                                Text(
                                  "3",
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: kMainColor
                                  ),
                                ),

                                // Button plus
                                InkWell(
                                  onTap: (){},
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: kMainColor.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        color: kMainColor,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                                "Description",
                                style: GoogleFonts.nunito(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.85),
                                )
                            )
                          ],
                        ),
                        const SizedBox(height: 3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.topStart,
                                children: [
                                  Container(
                                      width: 335,
                                      height: 1,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffd9d9d9))
                                  ),
                                  Positioned(
                                    //left: 0,
                                    //top: 0,
                                      child: Container(
                                          width: 130,
                                          height: 3,
                                          decoration: const BoxDecoration(
                                              color: Color(0xfffec64b))
                                      )
                                  )
                                ],
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          "Lorem Ipsum dolor sit amet, consectetur adipiscing elt, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Eiusmod tempor incididunt ut labore et dolore magna aliqua, Ut enim ad minim veniam",
                        style: TextStyle(
                        fontSize: 18,
                          fontWeight: FontWeight.w400,
                        )
                        ),
                      ],
                    ),
                  ),
                ),


              ),
            ],
          ),
        ),
      ),
      // ),

      //), child: null,
    );
  }
}