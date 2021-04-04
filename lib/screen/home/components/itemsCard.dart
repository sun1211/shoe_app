import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoe_app/constants.dart';
import 'package:shoe_app/models/ShoeListModel.dart';
import 'package:shoe_app/screen/detail/detail.dart';

class Itemcards extends StatelessWidget {
  final ShoeListModel shoeListModel;

  final int index;

  const Itemcards({Key key, this.shoeListModel, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    shoeModel: shoeListModel,
                  ),
                ),
              );
              print("Navigate to Detail Paage");
            },
            child: Container(
              // now we dont want this fix height and width it was for demo
              // height: 220,
              // width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                      color: knavbariconcolor,
                      offset: Offset(0, -1),
                      blurRadius: 10)
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8,
                      right: 8,
                      left: 8,
                    ),
                    //header
                    child: Row(
                      children: [
                        shoeListModel.showpersentage
                            ? Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, right: 8, left: 8),
                                child: Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: ksecondrycolor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "${shoeListModel.persentage}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                        Expanded(
                          child: Container(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              color: shoeListModel.activeheart
                                  ? kdefaultredcolor
                                  : Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/icons/heart.svg",
                                height: 20,
                                color: shoeListModel.activeheart
                                    ? Colors.white
                                    : knavbariconcolor,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  //mid layout
                  Stack(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: shoeListModel.showcasebgcolor,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                color: shoeListModel.showcasebgcolor,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        right: 5,
                        left: 0,
                        child: Hero(
                          tag: "${shoeListModel.shoeimage}",
                          child: Image.asset(
                            "${shoeListModel.shoeimage}",
                            height: 60,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${shoeListModel.shoeName}",
                    style: TextStyle(
                      color: kprimarycolor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${shoeListModel.price}",
                    style: TextStyle(
                      color: kprimarycolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
