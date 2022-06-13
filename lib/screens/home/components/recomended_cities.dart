import 'package:flutter/material.dart';
import 'package:move_on/screens/details/details_screen.dart';
import '../../../constants.dart';

class RecomendedCity extends StatelessWidget {
  const RecomendedCity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        RecomendCityCard(
          title: "Samantha",
          image:
          "https://cdn.getyourguide.com/img/location/5ffeb392eb81e.jpeg/68.jpg",
          country: "Russia",
          price: 440,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(),
              ),
            );
          },
        ),
        RecomendCityCard(
          title: "Johanna",
          image:
          "https://cdn.getyourguide.com/img/location/5ffeb392eb81e.jpeg/68.jpg",
          country: "Australia",
          price: 830,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(),
              ),
            );
          },
        ),
        RecomendCityCard(
          title: "Lisa",
          image:
          "https://cdn.getyourguide.com/img/location/5ffeb392eb81e.jpeg/68.jpg",
          country: "CZECH",
          price: 370,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(),
              ),
            );
          },
        ),
        RecomendCityCard(
          title: "Clarisse",
          image:
          "https://cdn.getyourguide.com/img/location/5ffeb392eb81e.jpeg/68.jpg",
          country: "France",
          price: 999,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(),
              ),
            );
          },
        ),
        RecomendCityCard(
          title: "Zoé",
          image:
          "https://cdn.getyourguide.com/img/location/5ffeb392eb81e.jpeg/68.jpg",
          country: "China",
          price: 580,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(),
              ),
            );
          },
        ),
      ]),
    );
  }
}

class RecomendCityCard extends StatelessWidget {
  const RecomendCityCard({
    Key? key,
    required this.title,
    required this.country,
    required this.image,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String title, country, image;
  final int price;
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
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: myPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$$price",
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
