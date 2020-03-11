import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  // async says that it is a asynchronous function
  void getData() async {

    // Simulate network request for a username
    // await will force the program to wait for the response (synchronous)
    // setting the returned value equal to username
    String username = await Future.delayed(Duration(seconds: 2), () {
      return "geralt";
    });
    
    // Simulate network request to get bio of username
    Future.delayed(Duration(seconds: 1), () { // Simulates an asynchronous request
      print("guitarist, programmer");
    });

    print("$username");
  }

  @override
  void initState() {
    super.initState();
    getData();
    print("hey");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}