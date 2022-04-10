import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/cubit/filter_cubit/filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterInitial());

  bool isPaidChecked = false;
  bool isProcessChecked = false;
  bool isRejectedByIQChecked = false;
  bool isRejectedByPaymeChecked = false;

  Column checkbox() {
    return Column(
      children: [
        CheckboxListTile(
          title: const Text(
            "Paid",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          side: const BorderSide(color: Colors.white),
          value: isPaidChecked,
          onChanged: (v) {
            isPaidChecked = !isPaidChecked;
            emit(CheckboxState());
          },
          activeColor: ColorConstants.kLightGreenButtonBgColor,
        ),
        CheckboxListTile(
          title: const Text(
            "In process",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          value: isProcessChecked,
          onChanged: (v) {
            isProcessChecked = !isProcessChecked;
            emit(CheckboxState());
          },
          side: const BorderSide(color: Colors.white),
          activeColor: ColorConstants.kLightGreenButtonBgColor,
        ),
        CheckboxListTile(
          activeColor: ColorConstants.kLightGreenButtonBgColor,
          side: const BorderSide(color: Colors.white),
          title: const Text(
            "Rejected by IQ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          value: isRejectedByIQChecked,
          onChanged: (v) {
            isRejectedByIQChecked = !isRejectedByIQChecked;
            emit(CheckboxState());
          },
        ),
        CheckboxListTile(
          activeColor: ColorConstants.kLightGreenButtonBgColor,
          title: const Text(
            "Rejected by Payme",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          value: isRejectedByPaymeChecked,
          onChanged: (v) {
            isRejectedByPaymeChecked = !isRejectedByPaymeChecked;
            emit(CheckboxState());
          },
          side: const BorderSide(color: Colors.white),
        ),
      ],
    );
  }
}