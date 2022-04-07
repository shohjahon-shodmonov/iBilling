import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/core/widgets/appbar.dart';
import 'package:ibilling/core/widgets/calendar.dart';
import 'package:ibilling/core/widgets/status_card.dart';

class ContractsScreen extends StatelessWidget {
  const ContractsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorConstants.kPrimaryBgColor,
      appBar: AppBarWidget.appbar("Contracts"),
      body: Column(
        children: [
          Calendar(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: ColorConstants.kLightGreenButtonBgColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Contracts"),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Invoice",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return StatusCard();
              },
              itemCount: 10,
            ),
          ),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     primary: ColorConstants.kLightGreenButtonBgColor,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(8),
          //     ),
          //   ),
          //   onPressed: () {},
          //   child: Text(
          //     "Load more...",
          //     style: TextStyle(
          //       fontSize: 15,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

