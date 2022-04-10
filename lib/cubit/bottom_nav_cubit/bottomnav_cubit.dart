import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/cubit/bottom_nav_cubit/bottomnav_state.dart';
import 'package:ibilling/screens/contracts/contracts_screen.dart';
import 'package:ibilling/screens/history/history.dart';
import 'package:ibilling/screens/new/new.dart';
import 'package:ibilling/screens/new/new_contract.dart';
import 'package:ibilling/screens/profile/profile_screen.dart';
import 'package:ibilling/screens/saved/saved.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitial());

  int pageIndex = 0;
  List screens = [
    ContractsScreen(),
    HistoryScreen(),
    NewDialog(),
    SavedScreen(),
    ProfileScreen(),
  ];

  void changeIndex(index) {
    pageIndex = index;
    emit(BottomNavChange());
  }
}
