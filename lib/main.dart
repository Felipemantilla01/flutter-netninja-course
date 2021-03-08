import 'package:flutter/material.dart';
import 'package:flutter_net_ninja_course/pages/choose_location.dart';
import 'package:flutter_net_ninja_course/pages/home.dart';
import 'package:flutter_net_ninja_course/pages/loading.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=>Loading(),
        '/home':(context)=>Home(),
        '/location':(context)=>ChooseLocation()
      },
    );
  }
}
