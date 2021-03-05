import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  String title;

  MyAppBar({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Center(
        child: Text(
          this.title,
          style: TextStyle(
              color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w900),
        ),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage(
                  'assets/images/mountain.jpeg'))),
    );
  }
}
