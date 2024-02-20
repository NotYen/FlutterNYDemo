// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RequestLogin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestLogin _$RequestLoginFromJson(Map<String, dynamic> json) => RequestLogin(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$RequestLoginToJson(RequestLogin instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
