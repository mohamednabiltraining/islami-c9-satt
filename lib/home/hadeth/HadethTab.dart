import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c9_sat/home/hadeth/Hadeth.dart';
import 'package:islami_c9_sat/home/hadeth/HadethNameWidget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) loadHadethFile();
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset("assets/images/hadeth_header_image.png")),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 8),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(
                      width: 2, color: Theme.of(context).dividerColor))),
          child: Text(
            'Hadeth Number',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Expanded(
          flex: 3,
          child: allHadeth.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return HadethNameWidget(allHadeth[index]);
                  },
                  separatorBuilder: (context, index) {
                    return Container(
                      height: 2,
                      width: double.infinity,
                      color: Theme.of(context).dividerColor,
                      margin: EdgeInsets.symmetric(horizontal: 64),
                    );
                  },
                  itemCount: allHadeth.length),
        )
      ],
    );
  }

  List<Hadeth> allHadeth = [];

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahdethSplittedList = fileContent.trim().split('#');
    for (int i = 0; i < ahdethSplittedList.length; i++) {
      String singleHadeth = ahdethSplittedList[i];
      List<String> hadethLines = singleHadeth.trim().split("\n");
      String title = hadethLines[0];
      hadethLines.remove(0);
      String content = hadethLines.join("\n");
      Hadeth hadeth = Hadeth(title, content);
      allHadeth.add(hadeth);
    }
    setState(() {});
  }
}
