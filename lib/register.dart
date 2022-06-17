import 'dart:io';

import 'package:flutter/material.dart';
import 'package:move_on/welcome.dart';
import 'package:move_on/login.dart';
import 'package:http/http.dart' as http;

import 'home.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  String prenom = '';
  String nom = '';
  String email = '';
  String password = '';
  String confirmPss = '';
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
   /* if(_keyForm.currentState.validate()){
                      Navigator.pushReplacementNamed(context, '/contactList');
                    }*/
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

                Text("Enregistrez-vous !", style : TextStyle(fontSize: 20, color: Color.fromARGB(255, 105, 94, 245))),

                SizedBox(height: 10),

                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return 'Veuillez renseigner un prénom';
                    }
                    if (value.trim().length < 3){
                      return 'Votre prénom doit faire au moins 3 caractères';
                    }
                    return null;

                  },

                  onChanged: (value) => prenom = value,
                  decoration: InputDecoration(
                      labelText: 'Prénom',
                      border: OutlineInputBorder()
                  ),
                ),

                SizedBox(height: 10.0),

                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Nom',
                      border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return 'Veuillez renseigner un nom';
                    }
                    if (value.trim().length < 3){
                      return 'Votre nom doit faire au moins 3 caractères';
                    }
                    return null;
                  },

                  onChanged: (value) => nom = value,
                ),

                SizedBox(height: 10.0),

                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return 'Veuillez renseigner une adresse mail';
                    }
                    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)){
                      return "Le format de votre adresse mail n'est pas valide";
                    }
                    return null;
                  },

                  onChanged: (value) => email = value,
                ),

                SizedBox(height: 10.0),

                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Mot de passe',
                      border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return 'Veuillez renseigner un mot de passe';
                    }
                    if (value.trim().length < 8){
                      return "Votre mot de passe doit faire minimum 8 caractères";
                    }
                    return null;
                  },

                  onChanged: (value) => password = value,
                ),

                SizedBox(height: 10.0),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Confirmez le mot de passe',
                      border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return 'Veuillez renseigner ce champ';
                    }
                    if (value != password){
                      return "Le mot de passe de confirmation ne correspond pas à celui attendu";
                    }
                    return null;
                  },

                  onChanged: (value) => confirmPss = value,
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
                        "Retour",
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
                        "S'enregistrer",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () async {
                        if(_keyForm.currentState!.validate()){
                          var url = Uri.parse('http://10.0.2.2:3000/register');
                          print("avant requete");
                          var response = await http.post(url, body: {
                            "first_name": prenom,
                            "last_name": nom,
                            "password": password,
                            "email": email});
                          print("AVANT IF");
                          if (response.statusCode == 201){
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Home())
                            );
                          }
                          else {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Erreur lors de l'envoie du formulaire")),);
                          }
                          print("OKKKKK");
                          print('Response status: ${response.statusCode}');
                          print('Response body: ${response.body}');
                    }
                      },
                    ),

                  ],
                ),

                Row(
                  children: [
                    Text('Déjà enregistré ?'),
                    TextButton(onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login())
                      );
                    },
                      style: TextButton.styleFrom(primary: Color.fromARGB(255, 105, 94, 245)),
                      child: Text('Logger vous'),
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
