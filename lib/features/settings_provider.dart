import 'package:flutter/material.dart';
import 'package:to_do_appp/features/settings/pages/settings_view.dart';
import 'package:to_do_appp/features/tasks/pages/tasks_view.dart';

class SettingsProvider extends ChangeNotifier{
  ThemeMode currentThemeMode= ThemeMode.light;
  int currentIndex=0;
String currentLanguage="English";
  List<Widget>screens=[
    TasksView(),
    SettingsView(),
  ];
  List<String>languageList=[
    "English",
    "Arabic"
  ];
List<String>themeModeList=[
  "Dark",
  "Light"
];


    changeTheme(ThemeMode newTheme){
      if(currentThemeMode == newTheme) return;
      currentThemeMode==newTheme;
      notifyListeners();
    }
    changeIndex(int index){
      currentIndex=index;
      notifyListeners();
    }
changeLanguage(String newLanguage){
  if(currentLanguage == newLanguage) return;
  currentLanguage== newLanguage;
  notifyListeners();
}

   bool isDark(){

    return currentThemeMode== ThemeMode.dark;
   }
}