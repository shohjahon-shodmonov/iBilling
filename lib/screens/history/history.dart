import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/core/widgets/appbar.dart';
import 'package:ibilling/core/widgets/status_card.dart';
import 'package:ibilling/core/widgets/row_datepicker.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({
    Key? key,
  }) : super(key: key);

  int indexLength = 5;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.appbar(context,"History", true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Date",
              style: TextStyle(
                color: ColorConstants.textColorInCardGrey,
                fontSize: 16,
              ),
            ),
          ),
          RowDatePicker(),
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
                        "No history for this period",
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
        ],
      ),
    );
  }

  
  
}
