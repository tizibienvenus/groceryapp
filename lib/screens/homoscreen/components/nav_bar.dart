import 'package:flutter/material.dart';
import 'package:groceryapp/constants.dart';
import 'package:groceryapp/screens/category/category.dart';
import 'package:groceryapp/screens/homoscreen/homescreen.dart';
import 'package:groceryapp/screens/profile/profile_screen.dart';

import '../../cart/cartsreen.dart';
import '../../favorites/favoris.dart';

class Home extends StatefulWidget{
  const Home({Key? key}): super(key: key);

  @override
  State<Home> createState() => _ButtomNavbarState();
}

class _ButtomNavbarState extends State<Home>{

  List pages = [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    FavoritesScreen(),
    ProfileScreen(),

  ];

  int CurrentIndex = 2;
  void onTape(int index){
    setState(() {
      CurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: pages[CurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTape,
        type: BottomNavigationBarType.fixed,
        // unselectedFontSize: 0,
        iconSize: 30,
        selectedFontSize: 14.0,
        //type: BottomNavigationBarType.fixed,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        backgroundColor: Colors.white,
        currentIndex: CurrentIndex,
        selectedItemColor: kMainColor,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 10,
        //style: BottomNavigationBar: NavBarStyle.style15,
        items: [
          const BottomNavigationBarItem(icon: Icon(
            Icons.home,
            //size: 30,
            //size: CurrentIndex. ? 30:40,
          ),
              label: 'Orders'
          ),
          const BottomNavigationBarItem(icon: Icon(
            Icons.mobile_friendly,
            //size: 25,
          ),
              label: 'Category'
          ),
          BottomNavigationBarItem(
         icon:Stack(
                children:[
                  const Icon(
                    Icons.shopping_cart_rounded,
                    //size: 30,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: kMainColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ]
            ),
              label: 'Cart'
            //size: 30,
          ),
          BottomNavigationBarItem(
              icon:
                Stack(
                  children:[
                    const Icon(
                      Icons.favorite,
                    //size: 30,
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                        child: Container(
                         width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: kMainColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                    )
                  ]
                ),
              label: 'Favoris'
          ),
          const BottomNavigationBarItem(icon: Icon(
            Icons.person,
            //size: 30,
          ),
              label: 'Profile'
          ),
        ],
      ),
    );
  }
}