import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoe_app/constants.dart';
import 'package:shoe_app/size_config.dart';

class BottonNavigation extends StatelessWidget {
  const BottonNavigation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: knavbariconcolor,
            blurRadius: 10,
            offset: Offset(0, -1),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            "assets/icons/home.svg",
            height: 30,
            color: kprimarycolor,
          ),
          SvgPicture.asset(
            "assets/icons/heart.svg",
            height: 30,
            color: knavbariconcolor,
          ),
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  print("Cart");
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: kprimarycolor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: knavbariconcolor,
                        offset: Offset(0, -1),
                        blurRadius: 8.0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(18),
                    child: SvgPicture.asset(
                      "assets/icons/cart.svg",
                      color: ksecondrycolor,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 45,
                bottom: 45,
                top: 0,
                right: 0,
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    color: kdefaultredcolor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "8",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
          SvgPicture.asset(
            "assets/icons/list.svg",
            height: 30,
            color: knavbariconcolor,
          ),
          SvgPicture.asset(
            "assets/icons/person.svg",
            height: 30,
            color: knavbariconcolor,
          ),
        ],
      ),
    );
  }
}
