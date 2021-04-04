import 'package:flutter/material.dart';
import 'package:shoe_app/models/ShoeListModel.dart';
import 'package:shoe_app/size_config.dart';

class ShoeShowCase extends StatelessWidget {
  final ShoeListModel shoeModel;
  const ShoeShowCase({Key key, this.shoeModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.75,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: shoeModel.showcasebgcolor,
                width: 2,
              )),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight / 2.75,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: shoeModel.showcasebgcolor,
                    width: 2,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.screenHeight / 2.75,
                  decoration: BoxDecoration(
                    color: shoeModel.showcasebgcolor,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: SizeConfig.screenHeight / 2.75,
                      decoration: BoxDecoration(
                        color: shoeModel.lightShowcasebgcolor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 80,
          left: 50,
          bottom: 0,
          child: Hero(
            tag: shoeModel.shoeimage,
            child: Image.asset(
              "${shoeModel.shoeimage}",
              height: 100,
            ),
          ),
        )
      ],
    );
  }
}
