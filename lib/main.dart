import 'package:flutter/material.dart';
import 'package:islami_c9_sat/MyThemeData.dart';
import 'package:islami_c9_sat/chapter_details/ChapterDetails.dart';
import 'package:islami_c9_sat/hadeth_details/HadethDetailsScreen.dart';
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
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.dark,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
