import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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

  Widget get _confirmPasswordForm => TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.lock),
          hintText: 'hint-confirm-password'.i18n(),
          border: OutlineInputBorder(),
        ),
        onChanged: (value) {
          password = value;
        },
      );

  Widget get _signupButton => ElevatedButton(
        onPressed: () {
          Modular.to.navigate('/home/');
        },
        child: Text(
          'signup-button'.i18n(),
          style: TextStyle(fontFamily: 'PoppinsBold', fontSize: 28),
        ),
      );

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Modular.to.navigate('/');
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'signup-hint'.i18n(),
                style: TextStyle(
                  fontFamily: 'PoppinsBold',
                  fontSize: 32,
                ),
              ),
              SizedBox(height: 30),
              _emailForm,
              SizedBox(height: 10),
              _passwordForm,
              SizedBox(height: 10),
              _confirmPasswordForm,
              SizedBox(height: 10),
              _signupButton,
            ],
          ),
        ),
      ),
    );
  }
}
