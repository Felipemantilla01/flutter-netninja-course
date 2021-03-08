import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Location'),
        backgroundColor: Colors.blue[900],
        elevation: 0,
      ),
      backgroundColor: Colors.grey[200],
      body: Text('hola')
    );
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose function ran ');
  }
}
