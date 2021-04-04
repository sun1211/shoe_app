import 'package:flutter/material.dart';
import 'package:shoe_app/models/ShoeListModel.dart';
import 'package:shoe_app/screen/home/components/category.dart';
import 'package:shoe_app/screen/home/components/header.dart';
import 'package:shoe_app/screen/home/components/itemsCard.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildProductSection(),
              SizedBox(
                height: 20,
              ),
              Category(),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: GridView.builder(
                    itemCount: shoeListModel.length,
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.79,
                    ),
                    itemBuilder: (context, index) => Itemcards(
                      shoeListModel: shoeListModel[index],
                      index: index,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
