import 'package:flutter/material.dart';
import 'package:simple_navigation_demo/routing/routes.dart';
import 'package:simple_navigation_demo/ui/home_screen.dart';
import 'package:simple_navigation_demo/ui/second_screen.dart';
import 'package:simple_navigation_demo/utils/exceptions/route_exception.dart';

class RouteGenerator {
  static RouteGenerator? _instance;

  RouteGenerator._();

  factory RouteGenerator() {
    _instance ??= RouteGenerator._();
    return _instance!;
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch(settings.name) {
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => MyHomePage());
      case Routes.secondScreenRoute:
        return MaterialPageRoute(builder: (_) => SecondScreen());
      default:
        throw RouteException("Route not found");
    }
  }
}