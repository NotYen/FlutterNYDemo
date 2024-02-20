import 'package:json_annotation/json_annotation.dart';

part 'RequestLogin.g.dart';

@JsonSerializable()
class RequestLogin {
  String email;
  String password;
  RequestLogin({
    required this.email,
    required this.password,
  });
  Map<String, dynamic> toJson() => _$RequestLoginToJson(this);
}