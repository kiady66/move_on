import 'dart:io';

import 'package:flutter/material.dart';
import 'package:move_on/welcome.dart';
import 'package:move_on/login.dart';
import 'package:http/http.dart' as http;

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String email = '';
  String password = '';
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text("Move'On", style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 105, 94, 245))),
        centerTitle: true,
        elevation: 0.0,
      ),
      body : SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255, 105, 94, 245),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 60.0),
          child: Form(
            key: _keyForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Text("Login !", style : TextStyle(fontSize: 20, color: Color.fromARGB(255, 105, 94, 245))),

                SizedBox(height: 10),

                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return 'Please enter an email';
                    }
                    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)){
                      return "The format of your email address is invalid";
                    }
                    return null;
                  },

                  onChanged: (value) => email = value,
                ),

                SizedBox(height: 10.0),

                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return 'Please enter a password';
                    }
                    if (value.trim().length < 8){
                      return "Your password must be at least 8 characters long";
                    }
                    return null;
                  },

                  onChanged: (value) => password = value,
                ),

                SizedBox(height: 5.0),

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
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Welcome())
                        );
                      },
                    ),

                    SizedBox(width: 20),

                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Color.fromARGB(255, 105, 94, 245),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () async {
                        if(_keyForm.currentState!.validate()){
                          var url = Uri.parse('http://10.0.2.2:3000/login');
                          print("avant requete");
                          var response = await http.get(url, headers: {
                            "email": email,
                            "password": password});
                          print("AVANT IF");
                          if (response.statusCode == 200){
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Home())
                            );
                          }
                          else {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Error submitting form")),);
                          }
                          print("OKKKKK");
                          print('Response status: ${response.statusCode}');
                          print('Response body: ${response.headers}');
                        }
                      },
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
