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
      body:Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text('1'),
              color: Colors.cyan,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text('2'),
              color: Colors.amber,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text('3'),
              color: Colors.pinkAccent,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click', style: TextStyle(fontFamily: 'Montserrat')),
        onPressed: () {},
        backgroundColor: Colors.red,
      ),
    );
  }
}
