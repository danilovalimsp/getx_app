import 'package:dio/dio.dart';

class ApiRepository {
  final Dio _client;

  ApiRepository(this._client);

  login() async {
    await _client.post("https://jsonplaceholder.typicode.com/users");

    return true;
  }
}
