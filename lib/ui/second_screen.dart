import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is second screen",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(Navigator.of(context).canPop()) {
            Navigator.of(context).pop();
          }
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
