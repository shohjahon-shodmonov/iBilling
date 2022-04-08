import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/core/widgets/appbar.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({Key? key, }) : super(key: key);

  var _now = DateTime.now();
  final _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.appbar("History"),
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
                child: datePickerMethod(),
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
                child: datePickerMethod(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  InkWell datePickerMethod() {
    return InkWell(
                child: Container(
                  height: getHeight(37),
                  width: getWidth(116),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: ColorConstants.kDarkContainerBg,
                  ),
                  child: Text("From"),
                ),
                onTap: () {
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
              );
  }
}
