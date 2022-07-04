import 'package:flutter/cupertino.dart';
import 'package:my_app/src/features/home/data/dto/person_dto.dart';
import 'package:my_app/src/features/home/data/repository/dio_client.dart';
import 'package:my_app/src/features/home/data/repository/person_repository.dart';

class HomeController extends ChangeNotifier {

  final PersonRepository _repo;

  HomeController(this._repo);

  var persons = <PersonDto>[];

  Future<void> fetchAllPersons() async {

    persons = await _repo.getPersons();

    notifyListeners();
  } 
}