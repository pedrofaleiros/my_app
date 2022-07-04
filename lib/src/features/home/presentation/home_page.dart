import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home-page'.i18n()),
        leading: IconButton(
          onPressed: () {
            Modular.to.navigate('/');
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
