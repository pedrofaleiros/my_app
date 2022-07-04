import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';
import 'package:my_app/src/features/home/data/repository/dio_client.dart';
import 'package:my_app/src/features/home/data/repository/person_repository.dart';
import 'package:my_app/src/features/home/presentation/viewmodel/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController(PersonRepository(DioClient()));

  /* @override
  void iniiState() {
    super.initState();
    controller.fetchAllPersons();
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.fetchAllPersons();
        setState(() {});
      }),
      appBar: AppBar(
        title: Text('home-page'.i18n()),
        leading: IconButton(
          onPressed: () {
            Modular.to.navigate('/');
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, widget) {
          return ListView.builder(
            itemCount: controller.persons.length,
            itemBuilder: (context, index) {
              final person = controller.persons[index];
              return ListTile(
                title: Container(
                  child: Text(person.racaCor),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
