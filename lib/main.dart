import 'package:flutter/material.dart';
import 'package:ibilling/core/components/router.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final RouteGenerator _router = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iBilling',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: ColorConstants.kPrimaryBgColor,
      ),
      initialRoute: '/',
      onGenerateRoute: _router.routeGenerate,
    );
  }
}

