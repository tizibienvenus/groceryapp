import 'package:flutter/material.dart';
import 'package:groceryapp/constants.dart';
AppBar buildAppBar() {
  return AppBar(
    backgroundColor: kMainColor,
    elevation: 0,
    centerTitle: false,
    title: Text('Categories'),
    /*actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: () {},
        ),
      ],*/
  );
}