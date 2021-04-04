import 'package:flutter/material.dart';
import 'package:shoe_app/constants.dart';
import 'package:shoe_app/models/ShoeListModel.dart';
import 'package:shoe_app/size_config.dart';

class PriceSection extends StatefulWidget {
  final ShoeListModel shoeModel;
  const PriceSection({Key key, this.shoeModel}) : super(key: key);

  @override
  _PriceSectionState createState() => _PriceSectionState();
}

class _PriceSectionState extends State<PriceSection> {
  int selectedIndex = 0;
  int selectedColorIndex = 0;
  List<String> shoeShize = [
    "US 6",
    "US 7",
    "US 8",
    "US 9",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight / 2.5,
      decoration: BoxDecoration(
          color: Color(0xffF7F7F7),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
                color: knavbariconcolor, offset: Offset(0, -1), blurRadius: 2),
          ]),
      child: Padding(
        padding: EdgeInsets.only(top: 30, right: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${widget.shoeModel.shoeName}",
                  style: TextStyle(
                    fontSize: 30,
                    color: kprimarycolor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 30,
                      color: Color(0xffFDD446),
                    ),
                    Text(
                      "${widget.shoeModel.rating}",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Built for natural motion, the Nike Flex Shoes",
              style: TextStyle(
                fontSize: 18,
                color: kprimarycolor,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Size:",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.35,
                  child: Center(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: shoeShize.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            minWidth: 50,
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: selectedIndex == index
                                ? ksecondrycolor
                                : Colors.white,
                            child: Center(
                              child: Text(
                                shoeShize[index],
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Available Color:",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2, vertical: 12),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedColorIndex = index;
                                });
                              },
                              child: Container(
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: selectedColorIndex == index
                                      ? kshoerepplecolorOptions[index]
                                      : Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    width: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kshoecolorOptions[index],
                                    ),
                                  ),
                                ),
                              ),
                            ));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
