import 'package:flutter/material.dart';

import '../../../constantes.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
        padding: EdgeInsets.all(myDefaultPadding / 2),
        height: 62,
        width: 62,
        decoration: BoxDecoration(
          color: myBgColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 22,
              color: myPrimaryColor.withOpacity(0.22),
            ),
            BoxShadow(
                offset: Offset(-15, -15),
                blurRadius: 20,
                color: Colors.white),
          ],
        ),
        child: icon
    );
  }
}