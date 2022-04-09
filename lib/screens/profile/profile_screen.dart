import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/core/widgets/appbar.dart';
import 'package:ibilling/cubit/language/language_cubit.dart';
import 'package:ibilling/cubit/language/language_state.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => LanguageCubit(),
      child: BlocConsumer<LanguageCubit, LanguageState>(
        listener: (context, state) {},
        builder: (context, state) => profileScaffold(context),
      ),
    );
  }

  Scaffold profileScaffold(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBarWidget.appbar(context, "Profile", false),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            height: getHeight(188),
            width: getWidth(343),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorConstants.kDarkContainerBg,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      children: const [
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
                            fontSize: 16,
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: ColorConstants.kDarkContainerBg,
              child: ListTile(
                title: Text(
                  context.watch<LanguageCubit>().languageList[1]['language'],
                  style: const TextStyle(
                    color: ColorConstants.textColorInCard,
                    fontSize: 15,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    BlocProvider.of<LanguageCubit>(context).showMyDialog(context);
                  },
                  icon: SvgPicture.asset(
                    context.watch<LanguageCubit>().languageList[1]['flag'],
                    height: getHeight(60),
                    width: getWidth(60),
                  ),
                ),
              ),
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
        fontSize: 16,
      ),
    );
  }

  Text profileTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: ColorConstants.textColorInCard,
        fontSize: 17,
      ),
    );
  }
}
