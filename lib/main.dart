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
      body: Center(
        /*child: Icon(
            Icons.airport_shuttle,
          size: 50.0,
          color: Colors.red,
        ),*/
        /*
        child: RaisedButton(
          onPressed: (){ print('You click me');},
          child: Text('Click me! '),
          color: Colors.red,
        ),
       */
        /*
        child: RaisedButton.icon(
            onPressed: (){},
            icon: Icon(Icons.alternate_email),
            label: Text('mail')),
         */
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.star),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click', style: TextStyle(fontFamily: 'Montserrat')),
        onPressed: () {},
        backgroundColor: Colors.red,
      ),
    );
  }
}
