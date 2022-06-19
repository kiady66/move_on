import 'package:flutter/material.dart';
import 'package:move_on/register.dart';
import 'package:move_on/screens/details/components/icon_card.dart';

import 'login.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            const Expanded(
                child: SizedBox()
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Center(
                        child: Text(
                          "Move'On",
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff695EF5)
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Center(
                        child: Text(
                          "Choose your journey",
                          style: TextStyle(
                            fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff695EF5)
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 100),
                      ),
                      IconCard(icon: Icon(Icons.airplanemode_active)),
                      SizedBox(width: 50),
                      IconCard(icon: Icon(Icons.car_rental)),
                    ],
                ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 100),
                  ),
                  IconCard(icon: Icon(Icons.directions_boat)),
                  SizedBox(width: 50),
                  IconCard(icon: Icon(Icons.directions_bike)),
                ],
              ),
            ),
            Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => Register())
                          );
                        },
                        child: const Text("Register"),
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xff695EF5)
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Login())
                          );
                        },
                        child: const Text('Login'),
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xff695EF5)
                        ),
                      ),
                    ]
                ))
          ],
        )
    );
  }
}