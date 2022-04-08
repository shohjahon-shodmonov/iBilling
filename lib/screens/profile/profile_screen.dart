import 'package:flutter/material.dart';
import 'package:ibilling/core/widgets/appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.appbar("Profile", false),
      
    );
  }
}
