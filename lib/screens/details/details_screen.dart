import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:move_on/components/bottom_nav_bar.dart';
import 'package:move_on/screens/details/components/body.dart';
import 'package:move_on/screens/home/components/header_with_searchbar.dart';

import '../../constantes.dart';
import '../../welcome.dart';
import 'components/icon_card.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
  required this.image,
    required this.title,
  }) : super(key: key);

  final String image, title;

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
            Text(title, style: TextStyle(color: Color.fromARGB(255, 105, 94, 245),fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 5),
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
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Color.fromARGB(255, 105, 94, 245),
                    child: Text(
                      "Note",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: (){
                      showModalBottomSheet(context: context, builder: (context){
                        return Scaffold(
                          body: SingleChildScrollView(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromARGB(255, 105, 94, 245),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 60.0),
                              child: Column(
                                children: [
                                  Text("Your opinion : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromARGB(255, 105, 94, 245)), textAlign: TextAlign.center),
                                  SizedBox(height: 25),
                                  Row(
                                    children: [
                                      Text("Notation : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color.fromARGB(255, 105, 94, 245))),
                                      IconButton(
                                        icon: Icon(Icons.star_border),
                                        color: Color.fromARGB(255, 105, 94, 245),
                                        onPressed: (){
                                        },
                                      ),
                                      IconButton(
                                        onPressed: (){},
                                        icon: Icon(Icons.star_border),
                                        color: Color.fromARGB(255, 105, 94, 245),
                                      ),
                                      IconButton(
                                        onPressed: (){},
                                        icon: Icon(Icons.star_border),
                                        color: Color.fromARGB(255, 105, 94, 245),
                                      ),
                                      IconButton(
                                        onPressed: (){},
                                        icon: Icon(Icons.star_border),
                                        color: Color.fromARGB(255, 105, 94, 245),
                                      ),
                                      IconButton(
                                        onPressed: (){},
                                        icon: Icon(Icons.star_border),
                                        color: Color.fromARGB(255, 105, 94, 245),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Commentary : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color.fromARGB(255, 105, 94, 245)), textAlign: TextAlign.left),
                                    ],
                                  ),
                                  TextField(
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 105, 94, 245),
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        color: Color.fromARGB(255, 105, 94, 245),
                                        child: Text(
                                          "Back",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: (){
                                          Navigator.pop(context);
                                        },
                                      ),
                                      SizedBox(width: 20),
                                      RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        color: Color.fromARGB(255, 105, 94, 245),
                                        child: Text(
                                          "Validate",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: ()  {
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                    }),
                SizedBox(width: 230),
                IconButton(
                    icon: Icon(Icons.favorite_border),
                    color: Color.fromARGB(255, 105, 94, 245),
                    onPressed: (){},
                ),
              ],
            ),

            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 32)),
                IconCard(
                    icon: Icon(Icons.car_rental),
                ),
                SizedBox(width: 32),
                IconCard(
                  icon: Icon(Icons.restaurant),
                ),
                SizedBox(width: 32),
                IconCard(
                  icon: Icon(Icons.credit_card),
                ),
                SizedBox(width: 32),
                IconCard(
                  icon: Icon(Icons.church),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}


