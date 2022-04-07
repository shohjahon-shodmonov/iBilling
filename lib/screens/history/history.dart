import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/core/widgets/appbar.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.appbar("History"),
      body: Column(
        children: [
          Text(
            "Date",
            style: TextStyle(
              color: ColorConstants.textColorInCardGrey,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
