import 'package:flutter/material.dart';
import 'package:move_on/screens/home/home_screen.dart';

import 'constantes.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: myBgColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: myTextColor),
        primaryColor: myPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}