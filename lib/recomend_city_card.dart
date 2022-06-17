import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constantes.dart';

class RecomendCityCard extends StatelessWidget {
  const RecomendCityCard({
    Key? key,
    required this.title,
    required this.city,
    required this.image,
    //required this.price,
    required this.press,
    required this.rate,
  }) : super(key: key);

  final String title, city, image, rate;
  //final int price;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          top: myDefaultPadding / 2,
          left: myDefaultPadding,
          bottom: myDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.network(image),
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(myDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: myPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n",
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: city.toUpperCase(),
                          style: TextStyle(
                            color: myPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    rate,
                    style: TextStyle(
                      color: myPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}