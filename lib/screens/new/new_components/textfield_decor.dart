import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/const.dart';

InputDecoration textFieldDecor({Widget? suffixIcon}) {
  return InputDecoration(
    suffixIcon: suffixIcon,
    border: const OutlineInputBorder(),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: ColorConstants.textColorInNewConract),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
          color: ColorConstants.textColorInNewConract, width: 1.0),
    ),
    fillColor: ColorConstants.textColorInNewConract,
    focusColor: ColorConstants.textColorInNewConract,
    hoverColor: ColorConstants.textColorInNewConract,
  );
}
