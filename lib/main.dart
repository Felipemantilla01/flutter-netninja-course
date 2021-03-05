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
        title: Text('My first App'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text('Hola mundo'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
      ),
    );
  }
}
