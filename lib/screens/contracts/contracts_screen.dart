import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/core/widgets/appbar.dart';
import 'package:ibilling/core/widgets/calendar.dart';
import 'package:ibilling/core/widgets/status_card.dart';

class ContractsScreen extends StatelessWidget {
  ContractsScreen({Key? key}) : super(key: key);

  int indexLength = 2;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBarWidget.appbar("Contracts"),
      body: Column(
        children: [
          const Calendar(),
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
                    child: const Text("Contracts"),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
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
            child: indexLength == 0
                ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/empty_contract.svg',
                        height: getHeight(88),
                        width: getWidth(88),
                        color: ColorConstants.kInactiveColor,
                      ),
                      const Text(
                        "No contracts are made",
                        style: TextStyle(
                          color: ColorConstants.kInactiveColor,
                          fontSize: 15,
                        ),
                      )
                    ],
                  )
                : ListView.builder(
                    itemBuilder: (context, index) {
                      return StatusCard(billNumber: 154, billStatus: "Paid");
                    },
                    itemCount: indexLength,
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
