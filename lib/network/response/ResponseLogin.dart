import 'package:json_annotation/json_annotation.dart';

part 'ResponseLogin.g.dart';

@JsonSerializable()
class ResponseLogin {
  String token = "";
  ResponseLogin({
    required this.token,
  });
  factory ResponseLogin.fromJson(Map<String, dynamic> json) => _$ResponseLoginFromJson(json);
}