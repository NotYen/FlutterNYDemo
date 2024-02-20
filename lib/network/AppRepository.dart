import 'package:dio/dio.dart';
import 'package:weather_app/network/request/RequestLogin.dart';
import 'package:weather_app/network/response/ResponseLogin.dart';

import 'api.dart';

class AppRepository {

  final PostClient _postClient = PostClient(Dio()..interceptors.add(LogInterceptor()));
  Future<ResponseLogin> postApiData(RequestLogin body) async {
    return _postClient.postApiData(body);
  }
}