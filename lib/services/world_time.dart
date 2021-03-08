import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location; //location name for the UI
  String time; // time in that location
  String flag; // url to an flag icon
  String url; // location url for the api endpoint
  bool isDayTime = false;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try{
      dynamic url =
      Uri.parse('https://worldtimeapi.org/api/timezone/${this.url}');
      Response response = await get(url);
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      this.time = DateFormat.jm().format(now);
      this.isDayTime = now.hour > 6 && now.hour < 18 ? true : false;
    }catch(e){
      print('Error....');
      time = 'could not get time data';
    }
  }
}
