import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/core/widgets/appbar.dart';
import 'package:ibilling/core/widgets/status_card.dart';
import 'package:ibilling/core/widgets/row_datepicker.dart';
import 'package:ibilling/cubit/filter_cubit/filter_cubit.dart';
import 'package:ibilling/cubit/filter_cubit/filter_state.dart';
import 'package:ibilling/screens/filter/filter_screen.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({
    Key? key,
  }) : super(key: key);

  int indexLength = 5;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterCubit(),
      child: BlocConsumer<FilterCubit, FilterState>(
        listener: (context, state) {},
        builder: (context, state) => historyScaffold(context, indexLength),
      ),
    );
  }
}

Scaffold historyScaffold(BuildContext context, indexLength) {
  return Scaffold(
    appBar: AppBarWidget.appbar(context, "History", true),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Date",
            style: TextStyle(
              color: ColorConstants.textColorInCardGrey,
              fontSize: 16,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "From",
              style: const TextStyle(
                fontSize: 15,
                color: ColorConstants.textColorInCardGrey,
              ),
            ),
            initialDate(context),
            SvgPicture.asset("assets/line2.svg"),
            const Text(
              "To",
              style: TextStyle(
                fontSize: 15,
                color: ColorConstants.textColorInCardGrey,
              ),
            ),
            lastData(context),
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
                    return StatusCard(billNumber: 154, billStatus: "Paid", index: index);
                  },
                  itemCount: indexLength,
                ),
        ),
      ],
    ),
  );
}
