import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_navigation_demo/routing/route_generator.dart';
import 'package:simple_navigation_demo/ui/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator().onGenerateRoute,
      home: const MyHomePage(),
    ),
  );
}
