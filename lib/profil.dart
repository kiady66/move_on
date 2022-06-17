import 'package:flutter/material.dart';
import 'package:move_on/recommend_city.dart';
import 'package:move_on/screens/home/components/header_with_searchbar.dart';

import 'components/bottom_nav_bar.dart';
import 'constantes.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myPrimaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body : Column(
        children: [
          HeaderWithSearchBar_Profil(size: size),
          Text(
            "Last Parkour",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15, color: Colors.black)
          ),
          RecomendedCity_Profil(),
          Container(
            width: 500,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text("Last Comment", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Rubik', fontSize: 15, color: Colors.black)
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundImage: NetworkImage("https://static.actu.fr/uploads/2020/09/20200521-175936-960x640.jpg"),
                    ),
                    SizedBox(width: 5),
                    Flexible(
                      child: Text("I visit Sainte-Catherine's street. It's a very nice place to do shopping.", style: TextStyle(fontSize: 12, color: Colors.black), overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundImage: NetworkImage("https://i.pinimg.com/originals/d2/52/46/d2524646bbf61c45a0dcbb0f4f4a7223.jpg"),
                    ),
                    SizedBox(width: 5),
                    Flexible(
                      child: Text("I was able to observe the quinconces square. It's wonderful", style: TextStyle(fontSize: 12, color: Colors.black), overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 49),

        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
