import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:my_app/src/features/home/domain/repository/person_repository_interface.dart';

class DioClient implements IPersonRepository {
  
  final dio = Dio();
  final opt = Options(headers: <String, String>{'authorization': 'Basic ' + base64Encode(utf8.encode('user-public-notificacoes:Za4qNXdyQNSa9YaA'))});

  @override
  Future get(String url) async {
    final response = await dio.get(url, options: opt);
    return response.data['hits']['hits'];
  }

}