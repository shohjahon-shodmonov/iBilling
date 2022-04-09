import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';

class AppBarWidget {
  static AppBar appbar(BuildContext context, String title, bool actions) {
    return AppBar(
      backgroundColor: ColorConstants.kPrimaryBgColor,
      leading: Container(
        height: getHeight(24),
        width: getWidth(24),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/icons/appbar_circle.png'),
          ),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 19,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/filter');
          },
          icon: SvgPicture.asset('assets/icons/filter.svg'),
        ),
        SvgPicture.asset('assets/icons/line.svg'),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/search');
          },
          icon: SvgPicture.asset('assets/icons/search.svg'),
        ),
      ],
    );
  }
}
