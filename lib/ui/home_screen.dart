import 'package:flutter/material.dart';
import 'package:simple_navigation_demo/routing/routes.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: const Text(
          "This is the first screen",
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return SecondScreen();
          //     },
          //   ),
          // );

          Navigator.pushNamed(context, Routes.secondScreenRoute);
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
