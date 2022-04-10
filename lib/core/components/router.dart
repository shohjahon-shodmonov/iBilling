import 'package:flutter/material.dart';
import 'package:ibilling/screens/filter/filter_screen.dart';
import 'package:ibilling/screens/home/home_screen.dart';
import 'package:ibilling/screens/new/new_contract.dart';
import 'package:ibilling/screens/new/new_invoice.dart';
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
      case "/newcontract":
        return MaterialPageRoute(builder: (_) => NewContract());
      case "/newinvoice":
        return MaterialPageRoute(builder: (_) => NewInvoice());
    }
  }
}
