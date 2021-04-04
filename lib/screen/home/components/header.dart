import 'package:flutter/material.dart';
import 'package:shoe_app/constants.dart';

Padding buildProductSection() {
  return Padding(
    padding: EdgeInsets.only(left: 25, top: 10, right: 25),
    child: Row(
      children: [
        Text(
          "Our Product",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
        Expanded(
          child: Container(),
        ),
        Text(
          "Sort by",
          style: TextStyle(
            color: knavbariconcolor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          Icons.keyboard_arrow_down,
          size: 15,
          color: knavbariconcolor,
        )
      ],
    ),
  );
}
