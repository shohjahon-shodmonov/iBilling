import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/const.dart';

Padding text(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 5),
      child: Text(
        text,
        style: const TextStyle(
          color: ColorConstants.textColorInNewConract,
          fontSize: 14,
        ),
      ),
    );
  }