import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/core/widgets/status_card_info.dart';
import 'package:ibilling/data/local.dart';

class StatusCard extends StatelessWidget {
  StatusCard({
    Key? key,
    required this.index,
    required this.billNumber,
    required this.billStatus,
  }) : super(key: key);

  int index;
  int billNumber;
  String billStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: getHeight(148),
      width: getWidth(343),
      decoration: BoxDecoration(
        color: ColorConstants.kDarkContainerBg,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/paper.svg',
                  height: getHeight(18),
                ),
                Text(
                  "№ $billNumber",
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                statusChip(billStatus),
              ],
            ),
          ),
          StatusCardInfo(
            index: index,
            name: info[index]['name'],
            amount: info[index]['amount'],
            lastInvoice: info[index]['lastInvoice'],
            numberOfInvoices: info[index]['numberOfInvoices'],
            dateCreatedAt: info[index]['date'],
          ),
        ],
      ),
    );
  }

  Container statusChip(String status) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: getHeight(28),
      decoration: BoxDecoration(
        color: status == "Paid"
            ? ColorConstants.kPaidColor.withOpacity(0.3)
            : status == "In Process"
                ? ColorConstants.kInProcessColor.withOpacity(0.3)
                : ColorConstants.kRejectedColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        status,
        style: TextStyle(
          color: status == "Paid"
              ? ColorConstants.kPaidTextColor
              : status == "In Process"
                  ? ColorConstants.kInProcessTextColor
                  : ColorConstants.kRejectedTextColor,
          fontSize: 14,
        ),
      ),
    );
  }
}
