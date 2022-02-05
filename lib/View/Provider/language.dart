import 'package:flutter/material.dart';
import 'package:whatsapp/main.dart';

class Language extends ChangeNotifier{
  String lang = language;

  getLanguage()
  {
    return lang;
  }

  setLanguage(String _lang)
  {
    lang = _lang;
    notifyListeners();
  }

  ///User Profile Translated Strings
}