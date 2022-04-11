import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/cubit/filter_cubit/filter_cubit.dart';
import 'package:ibilling/cubit/filter_cubit/filter_state.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterCubit(),
      child: BlocConsumer<FilterCubit, FilterState>(
        listener: (context, state) {},
        builder: (context, state) => filterScaffold(context),
      ),
    );
  }

  Scaffold filterScaffold(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Filters"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title("Status"),
          context.read<FilterCubit>().checkbox(),
          title("Date"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "From",
                style: TextStyle(
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
        ],
      ),
    );
  }

  Padding title(String title) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        title,
        style: const TextStyle(
          color: ColorConstants.textColorInCardGrey,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

InkWell initialDate(BuildContext context) {
  return InkWell(
    onTap: () async {
      var firstdate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2021),
          lastDate: DateTime(2023));

      context.read<FilterCubit>().changeFirstDate(firstdate);
    },
    child: Container(
      height: getHeight(37),
      width: getWidth(116),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "${context.watch<FilterCubit>().firstDate.day}.${context.watch<FilterCubit>().firstDate.month}.${context.watch<FilterCubit>().firstDate.year}",
            style: const TextStyle(
              fontSize: 15,
              color: ColorConstants.textColorInCardGrey,
            ),
          ),
          SvgPicture.asset("assets/calendar.svg"),
        ],
      ),
      decoration: const BoxDecoration(
          color: ColorConstants.kDarkContainerBg,
          borderRadius: BorderRadius.all(Radius.circular(10))),
    ),
  );
}

InkWell lastData(BuildContext context) {
  return InkWell(
    child: Container(
      height: getHeight(37),
      width: getWidth(116),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "${context.watch<FilterCubit>().secondDate.day}.${context.watch<FilterCubit>().secondDate.month}.${context.watch<FilterCubit>().secondDate.year}",
            style: const TextStyle(
              fontSize: 15,
              color: ColorConstants.textColorInCardGrey,
            ),
          ),
          SvgPicture.asset("assets/calendar.svg"),
        ],
      ),
      decoration: const BoxDecoration(
          color: ColorConstants.kDarkContainerBg,
          borderRadius: BorderRadius.all(Radius.circular(10))),
    ),
    onTap: () async {
      var lastDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2021),
          lastDate: DateTime(2023));

      context.read<FilterCubit>().changesecondDate(lastDate);
    },
  );
}
