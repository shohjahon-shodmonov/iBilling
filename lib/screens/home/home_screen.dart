import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/size_config.dart';
import 'package:ibilling/core/constants/const.dart';
import 'package:ibilling/cubit/bottom_nav_cubit/bottomnav_cubit.dart';
import 'package:ibilling/cubit/bottom_nav_cubit/bottomnav_state.dart';
import 'package:ibilling/screens/contracts/contracts_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: BlocConsumer<BottomNavCubit, BottomNavState>(
        listener: (context, state) {},
        builder: (context, state) => homeScaffold(context),
      ),
    );
  }

  Scaffold homeScaffold(BuildContext context) {
    return Scaffold(
      body: context
          .watch<BottomNavCubit>()
          .screens[context.watch<BottomNavCubit>().pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConstants.kPrimaryBgColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: context.watch<BottomNavCubit>().pageIndex,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              'assets/icons/contracts.svg',
              height: getHeight(50),
              width: getWidth(50),
              color: context.watch<BottomNavCubit>().pageIndex == 0
                  ? Colors.white
                  : ColorConstants.kInactiveColor,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              'assets/icons/history.svg',
              height: getHeight(50),
              width: getWidth(50),
              color: context.watch<BottomNavCubit>().pageIndex == 1
                  ? Colors.white
                  : ColorConstants.kInactiveColor,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              'assets/icons/new.svg',
              height: getHeight(50),
              width: getWidth(50),
              color: context.watch<BottomNavCubit>().pageIndex == 2
                  ? Colors.white
                  : ColorConstants.kInactiveColor,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              'assets/icons/saved.svg',
              height: getHeight(50),
              width: getWidth(50),
              color: context.watch<BottomNavCubit>().pageIndex == 3
                  ? Colors.white
                  : ColorConstants.kInactiveColor,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              'assets/icons/profile.svg',
              height: getHeight(50),
              width: getWidth(50),
              color: context.watch<BottomNavCubit>().pageIndex == 4
                  ? Colors.white
                  : ColorConstants.kInactiveColor,
            ),
          ),
        ],
        onTap: (index) {
          BlocProvider.of<BottomNavCubit>(context).changeIndex(index);
        },
      ),
    );
  }
}
