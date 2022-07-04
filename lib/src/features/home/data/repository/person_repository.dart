import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:my_app/src/features/home/data/dto/person_dto.dart';
import 'package:my_app/src/features/home/domain/repository/person_repository_interface.dart';

class PersonRepository {
  var url =
      "https://elasticsearch-saps.saude.gov.br/desc-esus-notifica-estado-df/_search";

  var auth = 'Basic ' +
      base64Encode(utf8.encode('user-public-notificacoes:Za4qNXdyQNSa9YaA'));

  final IPersonRepository client;

  PersonRepository(this.client);

  Future<List<PersonDto>> getPersons() async {
    final body = await client.get(url);
    return (body as List).map(PersonDto.fromJson).toList();
  }

//print(response.data['hits']['hits'][0]['_source']['id']);
}
