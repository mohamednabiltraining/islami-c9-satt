import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c9_sat/home/hadeth/HadethTab.dart';
import 'package:islami_c9_sat/home/quran/QuranTab.dart';
import 'package:islami_c9_sat/home/radio/RadioTab.dart';
import 'package:islami_c9_sat/home/tasbeh/TasbehTab.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/main_background.jpg',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedTabIndex = index;
            });
          },
          currentIndex: selectedTabIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                label: AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                label: AppLocalizations.of(context)!.tasbeh),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                label: AppLocalizations.of(context)!.radio)
          ],
        ),
        body: tabs[selectedTabIndex],
      ),
    );
  }

  var tabs = [QuranTab(), HadethTab(), TasbehTab(), RadioTab()];
}
