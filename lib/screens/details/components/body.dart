import 'package:flutter/material.dart';
import 'package:move_on/constants.dart';
import 'icon_card.dart';
import 'image_and_icons.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size)
        ],
      ),
    );
  }
}




