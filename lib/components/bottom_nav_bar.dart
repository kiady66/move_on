import 'package:flutter/material.dart';
import '../../../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: myDefaultPadding * 2, left: myDefaultPadding * 2, bottom: myDefaultPadding),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: myPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            iconSize: 35,
            onPressed: () {},
            icon: Icon(Icons.grass_rounded),
          ),
          IconButton(
            iconSize: 35,
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
          IconButton(
            iconSize: 35,
            onPressed: () {},
            icon: Icon(Icons.perm_identity_rounded),
          ),
        ],
      ),
    );
  }
}