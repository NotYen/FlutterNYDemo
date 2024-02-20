// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GPSResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GPSResponse _$GPSResponseFromJson(Map<String, dynamic> json) => GPSResponse(
      data: PostData.fromJson(json['data'] as Map<String, dynamic>),
      cityName: json['cityName'] as String,
      weather: json['weather'] as String,
      temp: json['temp'] as int,
      timezone: json['timezone'] as int,
    );

Map<String, dynamic> _$GPSResponseToJson(GPSResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'cityName': instance.cityName,
      'weather': instance.weather,
      'temp': instance.temp,
      'timezone': instance.timezone,
    };

PostData _$PostDataFromJson(Map<String, dynamic> json) => PostData(
      content: json['content'] as String,
    );

Map<String, dynamic> _$PostDataToJson(PostData instance) => <String, dynamic>{
      'content': instance.content,
    };
