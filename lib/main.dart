import 'package:flutter/material.dart';

import 'screens/navigation_bar_screen.dart';

void main() {
  /*SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('tr', ''),
      ],
      */
      debugShowCheckedModeBanner: false,
      title: 'Famille',
      theme: ThemeData(
        primaryColor: Colors.green,
        backgroundColor: const Color.fromARGB(255, 232, 245, 233),
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
          ),
          bodyText2: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      home: const NavigationBarScreen(),
      /*
      routes: {
        '/': (ctx) => const HomeScreen(),
        //'/settings': (ctx) => const SettingsScreen(),
        '/messages': (ctx) => const ChatScreen(),
        //'/family-tree': (ctx) => FamilyTreeScreen(),
        //'profile-settings': (ctx) => const ProfileSettingsScreen(),
      },
      */
    );
  }
}
