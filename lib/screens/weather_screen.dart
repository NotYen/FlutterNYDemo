import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  final dynamic parseWeather;

  WeatherScreen({this.parseWeather});

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String cityName = "";
  String weather = "";
  int temp = -1;
  int timezone = -1;
  String token = '';

  @override
  void initState() {
    super.initState();
    updateData(widget.parseWeather);
  }

  void updateData(dynamic weatherData) {
    // cityName = weatherData['name'];
    // timezone = weatherData['timezone'];
    // // Map<String, dynamic> aaa = weatherData['weather'][0];
    // weather = weatherData['weather'][0]['main'];
    // temp = weatherData['main']['temp'].round();
    token = weatherData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                token,
                style: TextStyle(fontSize: 30.0),
              ),
              SizedBox(height: 20.0),
              Text(
                token,
                style: TextStyle(fontSize: 30.0),
              ),
              SizedBox(height: 20.0),
              Text(
                token,
                style: TextStyle(fontSize: 30.0),
              ),
              SizedBox(height: 20.0),
              Text(
                token,
                style: TextStyle(fontSize: 30.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
