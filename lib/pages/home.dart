import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    this.data = ModalRoute.of(context).settings.arguments;
    print(this.data);

    String bgImage =
        data['isDayTime'] ? 'assets/images/day.png' : 'assets/images/night.png';

    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(bgImage), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
          child: Column(
            children: [
              TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.grey[300],
                  ),
                  label: Text(
                    'Edit Location',
                    style: TextStyle(
                        fontFamily: 'Montserrat', color: Colors.grey[300]),
                  )),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'Montserrat',
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(data['time'],
                  style: TextStyle(
                      fontSize: 66.0,
                      fontFamily: 'Montserrat',
                      color: Colors.white))
            ],
          ),
        ),
      )),
    );
  }
}
