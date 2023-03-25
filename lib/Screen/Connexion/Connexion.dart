// ignore_for_file: unused_field, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:tombolo/Screen/tombolaCode/TombalaCode.dart';
import 'package:tombolo/Screen/Inscription/Inscription.dart';
import 'package:tombolo/Screen/HomePage/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Center(
          child: Text('Connexion'),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => {
            Navigator.of(context).pop(),
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Connexion",
                  style: TextStyle(fontSize: 30.0),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: "Email",
                      hintText: "Entrer votre email",
                    ),
                    validator: (value) =>
                        value!.isEmpty ? "Email can't be empty" : null,
                    onSaved: (value) => _email = value!,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Mot de passe",
                      hintText: "Entrer votre mot de passe ",
                    ),
                    validator: (value) =>
                        value!.isEmpty ? "Password can't be empty" : null,
                    onSaved: (value) => _password = value!,
                  ),
                ),
                const SizedBox(height: 20.0),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                    // Actions à effectuer lors de l'appui sur le bouton lien
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.black, // Couleur du texte du bouton lien
                    textStyle: const TextStyle(
                      fontSize: 16, // Taille du texte du bouton lien
                      decoration: TextDecoration
                          .underline, // Souligné le texte du bouton lien
                    ),
                  ),
                  child: const Center(
                    child: Text('Inscription'),
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                    if (_formKey.currentState!.validate()) {
                      // _formKey.currentState.save();
                      _loginUser();
                    }
                  },
                  child: const Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _loginUser() {
    // Your login code goes here
    if (_scaffoldKey.currentState != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Login successful"),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }
}
