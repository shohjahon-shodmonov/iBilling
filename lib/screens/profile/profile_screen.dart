import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/core/widgets/appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBarWidget.appbar("Profile", false),
      body: Column(
        children: [
          Container(
            height: getHeight(188),
            width: getWidth(343),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorConstants.kDarkContainerBg,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/icons/account-circle.svg',
                        height: getHeight(60),
                        width: getWidth(60),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Otabek Abdusamatov",
                          style: TextStyle(
                            color: ColorConstants.kLightGreenButtonBgColor,
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Graphic Designer | IQ Education",
                          style: TextStyle(
                            color: ColorConstants.textColorInCard,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    profileTitle("Date of birth:  "),
                    profileInfo("16.01.2001"),
                  ],
                ),
                Row(
                  children: [
                    profileTitle("Phone number: "),
                    profileInfo("+998901234656"),
                  ],
                ),
                Row(
                  children: [
                    profileTitle("E-mail: "),
                    profileInfo("predictor@gmail.com"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Text profileInfo(String info) {
    return Text(
      info,
      style: const TextStyle(
        color: ColorConstants.textColorInCardGrey,
        fontSize: 14,
      ),
    );
  }

  Text profileTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: ColorConstants.textColorInCard,
        fontSize: 15,
      ),
    );
  }
}
