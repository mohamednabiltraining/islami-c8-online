import 'package:flutter/material.dart';
import 'package:islami_c8_online/ui/hadeth_details/hadeth_details.dart';
import 'package:islami_c8_online/ui/home/hadeth/Hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadeth);
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
