import 'package:flutter/material.dart';
import 'package:move_on/components/bottom_nav_bar.dart';
import 'package:move_on/screens/details/components/body.dart';
import 'package:move_on/screens/home/components/header_with_searchbar.dart';

import '../../constantes.dart';
import 'components/icon_card.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
  required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myPrimaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWithSearchBar_Details(size: size),
            Text("Nom de la place", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Container(
              height: size.height * 0.30,
              width: size.width * 0.9,
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}


