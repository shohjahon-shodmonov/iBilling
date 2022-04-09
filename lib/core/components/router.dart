import 'package:flutter/material.dart';
import 'package:ibilling/screens/filter/filter_screen.dart';
import 'package:ibilling/screens/home/home_screen.dart';
import 'package:ibilling/screens/search/search_screen.dart';

class RouteGenerator {
  Route? routeGenerate(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case "/filter":
        return MaterialPageRoute(builder: (_) => FilterScreen());
      case "/search":
        return MaterialPageRoute(builder: (_) => SearchScreen());
    }
  }
}