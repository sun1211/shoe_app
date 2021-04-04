import 'package:flutter/material.dart';
import 'package:shoe_app/constants.dart';
import 'package:shoe_app/models/ShoeListModel.dart';
import 'package:shoe_app/screen/detail/components/price_section.dart';
import 'package:shoe_app/screen/detail/components/shoe_show_case.dart';

import 'detail_botton.dart';

class Body extends StatelessWidget {
  final ShoeListModel shoeModel;

  const Body({Key key, this.shoeModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          shoeModel.showpersentage
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: ksecondrycolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "${shoeModel.persentage}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                )
              : Container(),
          SizedBox(
            height: 5,
          ),
          ShoeShowCase(
            shoeModel: shoeModel,
          ),
          Expanded(
            child: Container(),
          ),
          PriceSection(
            shoeModel: shoeModel,
          ),
          BottonDetail(shoeModel: shoeModel)
        ],
      ),
    );
  }
}
