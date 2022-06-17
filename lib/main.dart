import 'package:move_on/home.dart';
import 'package:move_on/profil.dart';
import 'package:move_on/register.dart';
import 'package:flutter/material.dart';

import 'favorite.dart';
import 'welcome.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        buttonColor: Colors.blue,
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
        ),
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/move_on/main',
      routes: {
        '/move_on': (context) => Welcome(),
        '/move_on/login': (context) => Login(),
        '/move_on/register': (context) => Register(),
        '/move_on/main': (context) => Home(),
        //'/move_on/main/city': (context) => City(),
        //'/move_on/main/category': (context) => Category(),
        //'/move_on/main/popular': (context) => Popular(),
        //'/move_on/tour': (context) => Tour(),
        '/move_on/favorite': (context) => Favorite(),
        '/move_on/profile/profil': (context) => Profil(),
        //'/move_on/profile/lastParkour': (context) => lastParkour(),
        //'/move_on/profile/lastComment': (context) => lastComment(),
      },
    );
  }
}