import 'package:json_annotation/json_annotation.dart';

part 'GPSResponse.g.dart';

@JsonSerializable()
class GPSResponse {
  PostData data;
  String cityName = "";
  String weather = "";
  int temp = -1;
  int timezone = -1;
  GPSResponse({
    required this.data,
    required this.cityName,
    required this.weather,
    required this.temp,
    required this.timezone,
  });
  factory GPSResponse.fromJson(Map<String, dynamic> json) => _$GPSResponseFromJson(json);
}

@JsonSerializable()
class PostData {
  String content;
  PostData({
    required this.content,
  });
  factory PostData.fromJson(Map<String, dynamic> json) => _$PostDataFromJson(json);
}
