import 'package:flutter/material.dart';

import '../constants.dart';


// TextFiels zone de saisie de texte
class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    //required this.onChanged,
    required this.title,
    this.controler,
  }) : super(key: key);

  //final ValueChanged onChanged;
  final String title;
  final TextEditingController? controler;
  //final Key

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 60,
        //margin: const EdgeInsets.all(kDefaultPadding),
        //padding: const EdgeInsets.symmetric(
          //horizontal: kDefaultPadding,
         // vertical: kDefaultPadding / 4, // 5 top and bottom
        //),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextField(
          maxLines: 1,
          minLines: 1,
          //onChanged: onChanged,
          style: TextStyle(
              color: Colors.black.withOpacity(0.8),
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            enabledBorder:  OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFD9D9D9)
              ),
              borderRadius: BorderRadius.circular(30)

            ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color(0xFFD9D9D9)
                ),
                borderRadius: BorderRadius.circular(30)
            ),
            hintText: title,
            hintStyle: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
