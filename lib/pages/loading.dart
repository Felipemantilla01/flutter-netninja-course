import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_net_ninja_course/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'Loading...';
  void setUpWorldTime() async {
    WorldTime instance = new WorldTime(url: 'Europe/Berlisn', flag: 'germany.png', location: 'Berlin');
    await instance.getTime();
    setState(() {
      this.time = instance.time;
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
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text('$time'),
      ),
    );
  }
}
