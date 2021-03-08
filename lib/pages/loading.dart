import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_net_ninja_course/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'Loading...';
  void setUpWorldTime() async {
    WorldTime instance = new WorldTime(url: 'Europe/Berlin', flag: 'germany.png', location: 'Berlin');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location':instance.location,
      'flag':instance.flag,
      'time':instance.time,
      'isDayTime':instance.isDayTime
    });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.blue[900],
          size: 50.0,
        ),
      )
    );
  }
}
