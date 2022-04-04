import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  /* String email = '';
  String password = '';
  String confirmPss = '';
  final _keyForm = GlobalKey<FormState>();*/

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
          padding: EdgeInsets.symmetric(vertical: 60.0),
          color: Colors.white,
          child: Form(
//            key: _keyForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text("S'enregistrer", style),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Prénom',
                      border: OutlineInputBorder()
                  ),
                  /* validator: (val) => val.isEmpty ? 'Entrez votre email' : null,
                  onChanged: (val) => email = val,*/
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Nom',
                      border: OutlineInputBorder()
                  ),
                  /* validator: (val) => val.length < 6 ? 'Entrez un password avec ou + de caracteres' : null,
                  onChanged: (val) => password = val,*/
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder()
                  ),
                  /* validator: (val) => val.length < 6 ? 'Entrez un password avec ou + de caracteres' : null,
                  onChanged: (val) => password = val,*/
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Mot de passe',
                      border: OutlineInputBorder()
                  ),
                  /* validator: (val) => val.length < 6 ? 'Entrez un password avec ou + de caracteres' : null,
                  onChanged: (val) => password = val,*/
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Confirmez le mot de passe',
                      border: OutlineInputBorder()
                  ),
                  /*onChanged: (val) =>  confirmPss = val,
                  validator: (val) => confirmPss != password ? 'Confirmez votre mot de passe' : null,*/
                  obscureText: true,
                ),
                SizedBox(height: 5.0),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Color.fromARGB(255, 105, 94, 245),
                  child: Text(
                    "S'enregistrer",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: (){
                    /*if(_keyForm.currentState.validate()){
                      Navigator.pushReplacementNamed(context, '/contactList');
                    }*/
                  },
                ),
                Text('Déjà enregistré ? Logger vous'),
                const Image (
                  image: AssetImage('assets/images/VioletVague.png')
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
