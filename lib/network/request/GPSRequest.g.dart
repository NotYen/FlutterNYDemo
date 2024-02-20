// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GPSRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GPSRequest _$GPSRequestFromJson(Map<String, dynamic> json) => GPSRequest(
      units: json['units'] as String,
      lat: json['lat'] as String,
      lon: json['lon'] as String,
      appid: json['appid'] as String,
    );

Map<String, dynamic> _$GPSRequestToJson(GPSRequest instance) =>
    <String, dynamic>{
      'units': instance.units,
      'lat': instance.lat,
      'lon': instance.lon,
      'appid': instance.appid,
    };
