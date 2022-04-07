import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/const.dart';

class StatusCardInfo extends StatelessWidget {
  StatusCardInfo({
    required this.name,
    required this.amount,
    required this.lastInvoice,
    required this.numberOfInvoices,
    required this.dateCreatedAt,
    Key? key,
  }) : super(key: key);

  String name;
  int amount;
  int lastInvoice;
  int numberOfInvoices;
  String dateCreatedAt;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "F.I.Sh:  ",
                style: TextStyle(
                  color: ColorConstants.textColorInCard,
                  fontSize: 17,
                ),
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                color: ColorConstants.textColorInCardGrey,
                fontSize: 17,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Amount:  ",
                style: TextStyle(
                  color: ColorConstants.textColorInCard,
                  fontSize: 17,
                ),
              ),
            ),
            Text(
              "$amount",
              style: const TextStyle(
                color: ColorConstants.textColorInCardGrey,
                fontSize: 17,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Last invoice:  ",
                style: TextStyle(
                  color: ColorConstants.textColorInCard,
                  fontSize: 17,
                ),
              ),
            ),
            Text(
              "№ $lastInvoice",
              style: const TextStyle(
                color: ColorConstants.textColorInCardGrey,
                fontSize: 17,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Number of invoices:  ",
                style: TextStyle(
                  color: ColorConstants.textColorInCard,
                  fontSize: 17,
                ),
              ),
            ),
            Text(
              "$numberOfInvoices",
              style: const TextStyle(
                color: ColorConstants.textColorInCardGrey,
                fontSize: 17,
              ),
            ),
            const Spacer(),
            Text(
              dateCreatedAt,
              style: const TextStyle(
                color: ColorConstants.textColorInCardGrey,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
