import 'package:flutter/material.dart';
import 'package:shoe_app/models/ShoeListModel.dart';
import 'package:shoe_app/screen/detail/components/body.dart';
import 'package:shoe_app/size_config.dart';

import 'components/app_bar.dart';

class DetailScreen extends StatelessWidget {
  final ShoeListModel shoeModel;
  const DetailScreen({Key key, this.shoeModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(
        shoeModel: shoeModel,
      ),
    );
  }
}
