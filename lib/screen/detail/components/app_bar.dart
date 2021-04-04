import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoe_app/constants.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/icons/menu.svg",
        height: 25,
      ),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "X",
            style: TextStyle(
              color: kprimarycolor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: "E",
            style: TextStyle(
              color: ksecondrycolor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/heart.svg",
          height: 25,
        ),
        onPressed: () {},
      )
    ],
  );
}
