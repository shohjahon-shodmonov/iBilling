import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';

class RowDatePicker extends StatelessWidget {
  RowDatePicker({Key? key}) : super(key: key);

  var _now = DateTime.now();
  final _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: datePickerMethod("From"),
        ),
        const Text(
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
            style: const TextStyle(
              fontSize: 15,
              color: ColorConstants.textColorInCardGrey,
            ),
          ),
          IconButton(
            onPressed: () {
              
            },
            icon: SvgPicture.asset('assets/icons/calendar.svg'),
          ),
        ],
      ),
    );
  }
}


