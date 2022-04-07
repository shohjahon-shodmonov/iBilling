import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
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
                  "№ 154",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                statusChip("Paid"),
              ],
            ),
          ),
          Column(
            children: [
              statusCardInfo("F.I.Sh: ", "Yoldosheva Surayyo"),
              statusCardInfo("Amount", "1200000 UZS"),
              statusCardInfo("Last invoice", "№ 156"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  statusCardInfo("Number of invoices", "6"),
                  Text(
                    "31.01.2022",
                    style: TextStyle(
                      color: ColorConstants.textColorInCardGrey,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row statusCardInfo(String title, String info) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            title,
            style: TextStyle(
              color: ColorConstants.textColorInCard,
              fontSize: 17,
            ),
          ),
        ),
        Text(
          info,
          style: TextStyle(
            color: ColorConstants.textColorInCardGrey,
            fontSize: 17,
          ),
        ),
      ],
    );
  }

  Container statusChip(String status) {
    return Container(
      padding: EdgeInsets.all(5),
      height: getHeight(28),
      decoration: BoxDecoration(
        color: ColorConstants.kPaidColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        status,
        style: TextStyle(
          color: ColorConstants.kPaidTextColor,
          fontSize: 14,
        ),
      ),
    );
  }
}
