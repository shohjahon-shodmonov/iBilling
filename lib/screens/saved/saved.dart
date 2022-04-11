import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/core/widgets/appbar.dart';
import 'package:ibilling/core/widgets/status_card.dart';

class SavedScreen extends StatelessWidget {
  SavedScreen({Key? key}) : super(key: key);

  int itemCountLength = 2;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBarWidget.appbar(context, "Saved", true),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: itemCountLength == 0
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/bookmark.svg',
                    height: getHeight(88),
                    width: getWidth(88),
                    color: ColorConstants.kInactiveColor,
                  ),
                  const Text(
                    "No saved contracts",
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
                itemCount: itemCountLength,
              ),
      ),
    );
  }
}
