import 'package:flutter/material.dart';
import 'package:groceryapp/constants.dart';
import 'package:groceryapp/models/category.dart';
import 'package:groceryapp/models/class_products.dart';

class CategoryHead extends StatelessWidget {
  const CategoryHead({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      width: 110,
      height: 90,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20),
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
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(child: Image.asset(category.image)),
        ),
    );
  }
}
