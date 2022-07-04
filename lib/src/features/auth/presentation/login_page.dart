import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var email;
  var password;

  Widget get _emailForm => TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.person),
          hintText: 'hint-email'.i18n(),
          border: OutlineInputBorder(),
        ),
        onChanged: (value) {
          email = value;
        },
      );

  Widget get _passwordForm => TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.lock),
          hintText: 'hint-password'.i18n(),
          border: OutlineInputBorder(),
        ),
        onChanged: (value) {
          password = value;
        },
      );

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Container(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _emailForm,
              SizedBox(height: 10),
              _passwordForm,
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Modular.to.navigate('/home/');
                },
                child: Text(
                  'login-button'.i18n(),
                  style: TextStyle(fontFamily: 'PoppinsBold', fontSize: 28),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
