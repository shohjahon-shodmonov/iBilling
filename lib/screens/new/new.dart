import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/core/widgets/appbar.dart';

class NewDialog extends StatelessWidget {
  const NewDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBarWidget.appbar(context, "Contracts", true),
      body: Center(
        child: Container(
          height: getHeight(190),
          width: getWidth(327),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: ColorConstants.kDarkContainerBg,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "What do you want to create?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/newcontract');
                  },
                  style: ElevatedButton.styleFrom(
                      primary: ColorConstants.buttonColorInNew),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/paper.svg',
                        height: getHeight(25),
                      ),
                      const Text(
                        "Contract",
                        style: TextStyle(
                          color: ColorConstants.textColorInCard,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/newinvoice');
                  },
                  style: ElevatedButton.styleFrom(
                      primary: ColorConstants.buttonColorInNew),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/invoice.svg',
                        height: getHeight(25),
                      ),
                      const Text(
                        "Invoice",
                        style: TextStyle(
                          color: ColorConstants.textColorInCard,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
