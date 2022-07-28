import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    primaryColor: Colors.lightGreen,
    secondaryHeaderColor: Colors.grey[700],
    backgroundColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
    iconTheme: const IconThemeData(
      color: Colors.lightGreen,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.lightGreen,
      ),
      elevation: 1,
      titleTextStyle: TextStyle(
        color: Colors.lightGreen,
        fontWeight: FontWeight.bold,
        fontSize: 23,
        fontFamily: 'Nunito',
      ),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 25.0,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.bold,
        color: Colors.lightGreen,
      ),
      headline6: TextStyle(
        fontSize: 20.0,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.bold,
        color: Colors.lightGreen,
      ),
      bodyText1: TextStyle(
        fontSize: 10.0,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        fontSize: 16.0,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
    ),
  );

  static final lightTheme = ThemeData(
    primaryColor: Colors.green,
    secondaryHeaderColor: Colors.grey[50],
    backgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(
      color: Colors.green,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.green,
      ),
      elevation: 1,
      titleTextStyle: TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
        fontSize: 23,
        fontFamily: 'Nunito',
      ),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 25.0,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.bold,
        color: Colors.green,
      ),
      headline6: TextStyle(
        fontSize: 20.0,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.bold,
        color: Colors.green,
      ),
      bodyText1: TextStyle(
        fontSize: 10.0,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        fontSize: 16.0,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    ),
  );
}
