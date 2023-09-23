import 'package:flutter/material.dart';
import 'package:islami_c9_sat/hadeth_details/HadethDetailsScreen.dart';
import 'package:islami_c9_sat/home/hadeth/Hadeth.dart';

class HadethNameWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethNameWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailsScreen.routeName, arguments: hadeth);
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
