import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/constants.dart';
import 'package:groceryapp/generated/assets.dart';
import 'package:groceryapp/screens/details/details_product.dart';

import '../../components/textfield.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //left: false,
      //right: false,
        body: SafeArea(
          bottom: false,
          top: false,
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              //alignment: AlignmentDirectional.topEnd,
                children: [
                  Image.asset(Assets.imagesImg),
                  Positioned(
                    top: 410,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        //height: MediaQuery.of(context).size.height,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(kDefaultPadding * 1.4), topRight: Radius.circular(kDefaultPadding * 1.4)),
                              color: kPrimaryColor,
                              //color: Colors.white
                            ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                      "\nSign In",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.85),
                                      )
                                  )
                                ],
                              ),
                              const SizedBox(height: 30,),
                              const SearchBox(title: 'Email'),
                              const SizedBox(height: 25,),
                              const SearchBox(title: 'Password'),
                              const SizedBox(height: 50,),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                      builder: (context) => DetailsProductsScreen()
                                  ),
                                  );
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: kMainColor,
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                  child:  Center(
                                    child: Text(
                                      'SIGN IN',
                                      style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23
                                      ),
                                    ),
                                  ),
                                ),
                              )
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

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      centerTitle: false,
      title: Text('Dashboard'),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: () {},
        ),
      ],
    );
  }
}
