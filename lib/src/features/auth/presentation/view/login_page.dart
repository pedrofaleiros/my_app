import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _userEmail;
  var _userPassword;

  Widget get _emailForm => TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.person),
          hintText: 'hint-email'.i18n(),
          border: OutlineInputBorder(),
        ),
        onChanged: (value) {
          _userEmail = value;
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
          _userPassword = value;
        },
      );

  Widget get _loginButton => ElevatedButton(
        onPressed: () {
          if(_userEmail == 'root' && _userPassword == 'root'){
            Modular.to.navigate('/home/');
          }
        },
        child: Text(
          'login-button'.i18n(),
          style: TextStyle(fontFamily: 'PoppinsBold', fontSize: 28),
        ),
      );

  Widget get _resetPasswordLink => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'reset-password'.i18n(),
            ),
          ),
        ],
      );

  Widget get _signupButton => OutlinedButton(
        onPressed: () {
          Modular.to.navigate('/signup');
        },
        child: Text(
          "signup-button".i18n(),
          style: TextStyle(
            fontFamily: 'PoppinsBold',
          ),
        ),
      );

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'login-hint'.i18n(),
                style: TextStyle(
                  fontFamily: 'PoppinsBold',
                  fontSize: 32,
                ),
              ),
              const SizedBox(height: 50),
              _emailForm,
              const SizedBox(height: 10),
              _passwordForm,
              _resetPasswordLink,
              const SizedBox(height: 10),
              _loginButton,
              const SizedBox(height: 10),
              Text('or'.i18n()),
              const SizedBox(height: 10),
              _signupButton,
            ],
          ),
        ),
      ),
    );
  }
}
