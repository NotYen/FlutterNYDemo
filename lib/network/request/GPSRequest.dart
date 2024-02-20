import 'package:json_annotation/json_annotation.dart';

part 'GPSRequest.g.dart';

@JsonSerializable()
class GPSRequest {
  String units;
  String lat;
  String lon;
  String appid;
  GPSRequest({
    required this.units,
    required this.lat,
    required this.lon,
    required this.appid
  });
  Map<String, dynamic> toJson() => _$GPSRequestToJson(this);
}