import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_net_ninja_course/shared/MyAppBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Hola Mundo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String title;
  MyHomePage({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My first App',
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body:Padding(
        padding: EdgeInsets.all(50.0),
        child: Text('Hola mundo'),
      ),
      /*
      Container(
        color: Colors.grey,
        child: Text('Hello'),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(50),
      ),
      */

      floatingActionButton: FloatingActionButton(
        child: Text('click', style: TextStyle(fontFamily: 'Montserrat')),
        onPressed: () {},
        backgroundColor: Colors.red,
      ),
    );
  }
}
