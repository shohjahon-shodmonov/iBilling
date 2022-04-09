import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/cubit/language/language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());

  bool isActive = false;
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

  String changeLanguage(String owned) {
    isActive = !isActive;
    if (isActive == true) {
      owned = 'active';
    } else {
      owned = 'inactive';
    }
    return owned;
  }
}
