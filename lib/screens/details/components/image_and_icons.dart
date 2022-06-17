import 'package:flutter/material.dart';

import '../../../constantes.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: myDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.7,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: myDefaultPadding * 1),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: EdgeInsets.symmetric(
                            horizontal: myDefaultPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios),
                        color: Color.fromARGB(255, 105, 94, 245),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.5,
              width: size.width * 0.95,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: myPrimaryColor.withOpacity(0.29),
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        image)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: myDefaultPadding),
              child: Row(
                children: [
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Color.fromARGB(255, 105, 94, 245),
                      child: Text(
                        "Rate",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: (){

                  }),
                  Icon(
                      Icons.star_border,
                    color: Color.fromARGB(255, 105, 94, 245),
                    size: 35,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Color.fromARGB(255, 105, 94, 245),
                    size: 35,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Color.fromARGB(255, 105, 94, 245),
                    size: 35,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Color.fromARGB(255, 105, 94, 245),
                    size: 35,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Color.fromARGB(255, 105, 94, 245),
                    size: 35,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}