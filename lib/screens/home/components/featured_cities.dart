import 'package:flutter/material.dart';

import '../../../constantes.dart';

class FeaturedCity extends StatelessWidget {
  const FeaturedCity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: [
            FeatureCityCard(
              image:
              "https://assets.pbimgs.com/pbimgs/ab/images/dp/wcm/202209/1456/faux-potted-fiddle-leaf-houseplant-c.jpg",
              press: () {},
            ),
            FeatureCityCard(
              image:
              "https://media1.popsugar-assets.com/files/thumbor/8j6koTVLEvAp58D_mrQLXnUbZgs/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2018/09/12/055/n/1922794/4b6b95425b99ad42515fd6.56143898_73839_XXX_v2/i/Faux-Fiddle-Leaf-Fig-Plant.jpg",
              press: () {},
            ),
          ]
      ),
    );
  }
}

class FeatureCityCard extends StatelessWidget {
  const FeatureCityCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: myDefaultPadding,
            top: myDefaultPadding / 2,
            bottom: myDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(image),
          ),
        ),
      ),
    );
  }
}