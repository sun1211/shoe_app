import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoe_app/constants.dart';
import 'package:shoe_app/models/ShoeListModel.dart';
import 'package:shoe_app/size_config.dart';

class BottonDetail extends StatelessWidget {
  const BottonDetail({
    Key key,
    @required this.shoeModel,
  }) : super(key: key);

  final ShoeListModel shoeModel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: SizeConfig.screenWidth,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: knavbariconcolor,
              blurRadius: 2,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 30),
          child: Row(
            children: [
              Text(
                "${shoeModel.price}",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Color(0xffF7F7F7),
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/cart.svg",
                          height: 20,
                          color: kprimarycolor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Add To Cart",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: kprimarycolor),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
