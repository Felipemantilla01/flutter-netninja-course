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
      home: MyHomePage(title: 'Ninja ID card'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String title;
  MyHomePage({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          this.title,
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/gg.jpeg'),
                radius: 70,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text('NAME',
                style: TextStyle(color: Colors.grey, fontFamily: 'Montserrat')),
            SizedBox(height: 10.0),
            Text('Felipe Mantilla',
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0)),
            SizedBox(height: 30.0),
            Text('CURRENT NINJA LEVEL',
                style: TextStyle(color: Colors.grey, fontFamily: 'Montserrat')),
            SizedBox(height: 10.0),
            Text('8',
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0)),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey[400]),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'felipe.mantilla@kbe.ai',
                  style: TextStyle(
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                      color: Colors.grey[400]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
