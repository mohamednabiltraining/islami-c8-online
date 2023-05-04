import 'package:flutter/material.dart';
import 'package:islami_c8_online/ui/home/hadeth/Hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        hadeth.title,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
