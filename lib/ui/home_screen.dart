import 'package:flutter/material.dart';
import 'package:simple_navigation_demo/routing/routes.dart';
import 'package:simple_navigation_demo/ui/second_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This is the first screen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return SecondScreen();
              },
            ),
          );

          Navigator.pushNamed(context, Routes.secondScreenRoute);
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
