import 'package:flutter/material.dart';
import 'package:move_on/screens/home/components/title_with_more_button.dart';
import '../../../constantes.dart';
import '../../../recommend_city.dart';
import 'header_with_searchbar.dart';
import 'featured_cities.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBar(size: size),
          TitleWithMoreBtn(
            title: "Popular",
            press: () {},
          ),
          RecomendedCity(),
          SizedBox(height: myDefaultPadding)
        ],
      ),
    );
  }
}

class Body_Favorite extends StatelessWidget {
  const Body_Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBar_Favorite(size: size),
          TitleWithMoreBtn_Favorite(
            title: "Favorite Places",
            press: () {},
          ),
          RecomendedCity_Favorite(),
          SizedBox(height: myDefaultPadding)
        ],
      ),
    );
  }
}
