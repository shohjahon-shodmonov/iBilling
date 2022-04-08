import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/core/widgets/appbar.dart';
import 'package:ibilling/core/widgets/status_card.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({
    Key? key,
  }) : super(key: key);

  int indexLength = 5;
  var _now = DateTime.now();
  final _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.appbar("History", true),
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: datePickerMethod("From"),
              ),
              Text(
                "-",
                style: TextStyle(
                  fontSize: 25,
                  color: ColorConstants.lineColorInDatePicker,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: datePickerMethod("To"),
              ),
            ],
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

  Container datePickerMethod(String fromOrTo) {
    return Container(
      height: getHeight(37),
      width: getWidth(116),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorConstants.kDarkContainerBg,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            fromOrTo,
            style: TextStyle(
              fontSize: 15,
              color: ColorConstants.textColorInCardGrey,
            ),
          ),
          IconButton(
            onPressed: () {
              DateTimePicker(
                initialValue: "02.04.2022",
                initialDate: _now,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                dateLabelText: 'Date',
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print("Saved: $val"),
              );
            },
            icon: SvgPicture.asset('assets/icons/calendar.svg'),
          ),
        ],
      ),
    );
  }
}
