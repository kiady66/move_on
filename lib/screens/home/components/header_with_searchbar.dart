import 'package:flutter/material.dart';
import '../../../constantes.dart';

class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: myDefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(myDefaultPadding, 0, myDefaultPadding, 36 + myDefaultPadding),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
              color: Color(0xff695EF5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: const <Widget>[
                Text(
                  "Move'On",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1560790671-b76ca4de55ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=868&q=80"),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: myDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: myDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: myPrimaryColor.withOpacity(0.23))
                  ]),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: myPrimaryColor.withOpacity(0.5),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon:
                  Icon(Icons.search, color: myPrimaryColor, size: 32),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderWithSearchBar_Favorite extends StatelessWidget {
  const HeaderWithSearchBar_Favorite({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(myDefaultPadding, 0, myDefaultPadding, 36 + myDefaultPadding),
            height: size.height * 0.2 - 50,
            decoration: const BoxDecoration(
              color: Color(0xff695EF5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: const <Widget>[
                Text(
                  "Move'On",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1560790671-b76ca4de55ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=868&q=80"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderWithSearchBar_Profil extends StatelessWidget {
  const HeaderWithSearchBar_Profil({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(myDefaultPadding, 0, myDefaultPadding, 36 + myDefaultPadding),
            height: size.height * 0.2 - 30,
            decoration: const BoxDecoration(
              color: Color(0xff695EF5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: const <Widget>[
                Text(
                  "Move'On",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1560790671-b76ca4de55ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=868&q=80"),
                  radius: 60,
                ),
                Text("François Joly", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderWithSearchBar_Details extends StatelessWidget {
  const HeaderWithSearchBar_Details({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(myDefaultPadding, 0, myDefaultPadding, 36 + myDefaultPadding),
            height: size.height * 0.2 - 30,
            decoration: const BoxDecoration(
              color: Color(0xff695EF5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: const <Widget>[
                Text(
                  "Move'On",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1560790671-b76ca4de55ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=868&q=80"),
                  radius: 60,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}