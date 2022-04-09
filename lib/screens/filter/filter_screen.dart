import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        title: Text("Filters"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          title("Status"),
          context.read<FilterCubit>().checkbox(),
          title("Date"),
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
