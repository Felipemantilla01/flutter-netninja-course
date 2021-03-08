import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  void getData() async {
    // simulate network request for a username
    String username = await Future.delayed(Duration(seconds: 3), (){
      return 'yoshi';
    });

    String bio = await Future.delayed(Duration(seconds: 2), (){
      return 'Vegan, musician & egg collector';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    print('initState function ran');
    getData();
  }

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
      body: RaisedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose function ran ');
  }
}
