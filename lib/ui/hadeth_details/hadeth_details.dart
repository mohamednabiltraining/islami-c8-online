import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c8_online/providers/settings_provider.dart';
import 'package:islami_c8_online/ui/home/hadeth/Hadeth.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider = Provider.of<SettingsProvider>(context);

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(provider.getBackgroundImage()),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Column(
            children: [
              Expanded(
                child: Card(
                  elevation: 24,
                  margin: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  child: SingleChildScrollView(
                    child: Text(
                      args.content,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
