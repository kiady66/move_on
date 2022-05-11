import 'dart:ui';

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 105, 94, 245),
        title: Text("My Profil", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
        // iconTheme: Icon(Icons.card_travel),
        centerTitle: true,
        elevation: 0.0,
      ),
      body : Column(
        children: [
          Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image (
                    image: AssetImage('assets/images/profile.png'),
                    width: 80.0,
                    height: 80.0,
                    alignment: Alignment.topCenter,
                ),
                SizedBox(height: 10.0
                ),
                Text("Valentin Schaefer", textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Rubik', fontSize: 15, color: Colors.black)
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("Last Parkour", textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Rubik', fontSize: 15, color: Colors.black)),
                  SizedBox(height: 5.0
                  ),
                  // ListView
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 150.0),
                    alignment: Alignment.centerLeft,
                    height: 300,
                    width: 500,
                    child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image(
                                    image: AssetImage('assets/images/effeil_tower.jpg'),
                                    height: 325.0,
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                              child: Text("Eiffel Tower", textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Rubik', fontSize: 15, color: Colors.white,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(1.0, 1.0),
                                      blurRadius: 10.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ]
                              )),
                          ),
                          Container(
                            width: 700,
                            padding: EdgeInsets.symmetric(horizontal: 145.0, vertical: 10.0),
                            child: Text("4,3*", textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Rubik', fontSize: 15, color: Colors.yellow,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0.5, 0.5),
                                    blurRadius: 10.0,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ]
                            )),
                          ),
                        ],
                    )
                  )
                ],
            ),
          ),
          SizedBox(height: 15.0
          ),
          Container(
            width: 500,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                Text("Last Comment", textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Rubik', fontSize: 15, color: Colors.black)
                ),
                SizedBox(height: 10.0
                ),
                Text("My last visit at Bordeaux was great but I don’t really recommand the tram. There is a lot of people.", textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Rubik', fontSize: 12, color: Colors.black)
                ),
                ],
            ),
          ),
        ],
      ),
    );
  }
}