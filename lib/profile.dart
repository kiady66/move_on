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
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text("My Profil", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black)),
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
                    width: 100.0,
                    height: 100.0,
                    alignment: Alignment.topCenter,
                ),
                SizedBox(height: 10.0
                ),
                Text("Valentin Schaefer", textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Rubik', fontSize: 25, color: Colors.black)
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("Last Parkour", textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Rubik', fontSize: 20, color: Colors.black)),
                  SizedBox(height: 10.0
                  ),
                  // ListView
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 150.0),
                    alignment: Alignment.centerLeft,
                    child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image(
                                    image: AssetImage('assets/images/effeil_tower.jpg'),
                                    height: 325.0,
                            ),
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
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                Text("Last Comment", textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Rubik', fontSize: 20, color: Colors.black)
                ),
                SizedBox(height: 10.0
                ),
                Text("My last visit at Bordeaux was great but I don’t really recommand the tram. There is a lot of people.", textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Rubik', fontSize: 15, color: Colors.black)
                ),
                ],
            ),
          ),
        ],
      ),
    );
  }
}