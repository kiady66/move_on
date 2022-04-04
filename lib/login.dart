import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  /* String email = '';
  String password = '';
  String confirmPss = '';
  final _keyForm = GlobalKey<FormState>();*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Move'On"),
        centerTitle: true,
      ),
      body : SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
          child: Form(
//            key: _keyForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder()
                  ),
                  /* validator: (val) => val.isEmpty ? 'Entrez votre email' : null,
                  onChanged: (val) => email = val,*/
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
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.blue,
                  child: Text(
                    'Se connecter',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: (){
                    /*if(_keyForm.currentState.validate()){
                      Navigator.pushReplacementNamed(context, '/contactList');
                    }*/
                  },
                ),
                Text('Mot de passe oublié'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
