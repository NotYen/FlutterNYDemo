import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:weather_app/network/response/ResponseLogin.dart';

import 'request/RequestLogin.dart';


part 'api.g.dart';

@RestApi(baseUrl: "https://reqres.in/api/login")
abstract class PostClient {
  factory PostClient(Dio dio, {String baseUrl}) = _PostClient;

  @POST("")
  Future<ResponseLogin> postApiData(@Body() RequestLogin data);
}