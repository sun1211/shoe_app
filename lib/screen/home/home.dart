import 'package:flutter/material.dart';
import 'package:shoe_app/constants.dart';
import 'package:shoe_app/screen/home/components/body.dart';
import 'package:shoe_app/size_config.dart';

import 'components/app_bar.dart';
import 'components/bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kdefaultbgcolor,
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottonNavigation(),
    );
  }
}
