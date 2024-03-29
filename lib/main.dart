import 'package:flutter/material.dart';
import 'package:islami_c9_sat/chapter_details/ChapterDetails.dart';
import 'package:islami_c9_sat/home/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami App',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
          ),
          scaffoldBackgroundColor: Colors.transparent,
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFB7935F)),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              selectedItemColor: Colors.black,
              selectedIconTheme: IconThemeData(size: 32)),
          dividerColor: Color(0xFFB7935F),
          cardTheme: CardTheme(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)))),
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
