import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/cubit/language/language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());

  bool isActive = false;
  String radioGroupValue = "Language";
  List languageList = [
    {
      'flag': 'assets/icons/uz.svg',
      'language': "O'zbek (Lotin)",
    },
    {
      'flag': 'assets/icons/en.svg',
      'language': "English (USA)",
    },
    {
      'flag': 'assets/icons/ru.svg',
      'language': "Русский",
    },
  ];

  void changeLanguage(index) {
    isActive = !isActive;
    emit(LanguageChange());
  }

  showMyDialog(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: ColorConstants.kDarkContainerBg,
          title: const Text(
            "Choose a language",
            style: TextStyle(
              color: ColorConstants.textColorInCard,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          content: SizedBox(
            height: getHeight(180),
            width: getWidth(330),
            child: ListView.builder(
              padding: const EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: SvgPicture.asset(
                    languageList[index]['flag'],
                    height: getHeight(70),
                    width: getWidth(70),
                  ),
                  title: Text(
                    languageList[index]['language'],
                    style: const TextStyle(
                      color: ColorConstants.textColorInCard,
                      fontSize: 17,
                    ),
                  ),
                  trailing: SvgPicture.asset(isActive
                      ? 'assets/icons/radiobutton_checked.svg'
                      : 'assets/icons/radiobutton_inactive.svg'),
                  onTap: () {
                    changeLanguage(index);
                  },
                );
              },
              itemCount: languageList.length,
            ),
          ),
          actions: [
            ButtonBar(
              buttonPadding: EdgeInsets.symmetric(horizontal: 30),
              buttonMinWidth: getWidth(150),
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                      color: ColorConstants.kLightGreenButtonBgColor,
                      fontSize: 17,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: ColorConstants.textCOlorDarkDreen,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Done",
                    style: TextStyle(
                      color: ColorConstants.textColorInCard,
                      fontSize: 17,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: ColorConstants.kLightGreenButtonBgColor,
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
