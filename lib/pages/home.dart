import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(
      backgroundColor:
          data['isDaytime'] ? Colors.blue[300] : Colors.indigo[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, "/location");
                },
                icon: Icon(
                  Icons.edit_location,
                  color: Colors.white,
                ),
                label: Text(
                  'Edit Location',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: TextStyle(
                        fontSize: 32, letterSpacing: 2.0, color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 20),
              Text(
                data['time'],
                style: TextStyle(fontSize: 60, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
