import 'package:flutter/material.dart';
import 'package:move_on/favorite.dart';
import 'package:move_on/home.dart';
import 'package:move_on/profil.dart';
import '../constantes.dart';

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
            color: Color.fromARGB(255, 105, 94, 245),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home())
            );},
            icon: Icon(Icons.home),
          ),
          IconButton(
            iconSize: 35,
            color: Color.fromARGB(255, 105, 94, 245),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Favorite())
              );
            },
            icon: Icon(Icons.favorite),
          ),
          IconButton(
            iconSize: 35,
            color: Color.fromARGB(255, 105, 94, 245),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profil())
              );
              },
            icon: Icon(Icons.perm_identity_rounded),
          ),
        ],
      ),
    );
  }
}