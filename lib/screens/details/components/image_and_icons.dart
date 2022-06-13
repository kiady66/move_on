import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: myDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: myDefaultPadding * 3),
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
                        icon: Icon(Icons.arrow_back),
                      ),
                    ),
                    Spacer(),
                    IconCard(
                      icon: Icon(
                        Icons.local_florist_outlined,
                        color: myPrimaryColor,
                        size: 40,
                      ),
                    ),
                    IconCard(
                      icon: Icon(
                        Icons.water_drop_outlined,
                        color: myPrimaryColor,
                        size: 40,
                      ),
                    ),
                    IconCard(
                      icon: Icon(
                        Icons.auto_graph_outlined,
                        color: myPrimaryColor,
                        size: 40,
                      ),
                    ),
                    IconCard(
                      icon: Icon(
                        Icons.wb_sunny_outlined,
                        color: myPrimaryColor,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: myPrimaryColor.withOpacity(0.29),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                image: DecorationImage(
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1623167350-screen-shot-2021-06-08-at-11-48-38-am-1623167334.png?crop=0.803xw:1.00xh;0.146xw,0&resize=480:*")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}