import 'package:flutter/material.dart';
import 'package:islami_c9_sat/MyThemeData.dart';
import 'package:islami_c9_sat/home/hadeth/Hadeth.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = "hadeth-details";

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  MyThemeData.isDarkEnabled
                      ? 'assets/images/main_background_dark.png'
                      : 'assets/images/main_background.jpg',
                ),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Card(
            elevation: 18,
            margin: EdgeInsets.symmetric(vertical: 64, horizontal: 18),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      args.content,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
