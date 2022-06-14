import 'package:flutter/material.dart';
import 'package:move_on/constants.dart';
import 'title_with_more_btn.dart';
import 'header_with_searchbar.dart';
import 'recomended_cities.dart';
import 'featured_cities.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          TitleWithMoreBtn(
            title: "Favorite",
            press: () {},
          ),
          RecomendedCity(),
          SizedBox(height: myDefaultPadding)
        ],
      ),
    );
  }
}


