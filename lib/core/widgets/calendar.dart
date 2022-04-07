import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/const.dart';

class Calendar extends StatelessWidget {
  const Calendar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CalendarAgenda(
      weekDay: WeekDay.short,
      backgroundColor: ColorConstants.kCalendarBg,
      dateColor: Colors.white,
      selectedDateColor: ColorConstants.kLightGreenButtonBgColor,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(Duration(days: 140)),
      lastDate: DateTime.now().add(Duration(days: 7)),
      onDateSelected: (date) {
        print(date);
      },
    );
  }
}
