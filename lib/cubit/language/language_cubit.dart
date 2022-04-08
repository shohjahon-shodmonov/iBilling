import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/cubit/language/language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());

  static const List languageList = [
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

  ChangeLanguage() {
    
  }

  
}
