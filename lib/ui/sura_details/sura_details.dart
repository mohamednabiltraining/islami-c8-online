import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c8_online/ui/sura_details/verse_content.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> chapterContent = [];

  @override
  Widget build(BuildContext context) {
    // casting
    var args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsScreenArgs;
    if (chapterContent.isEmpty) // initial state
      readFile(args.index);

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/main_background.png'),
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
                  color: Colors.white,
                  child: chapterContent.isEmpty
                      ? Center(child: CircularProgressIndicator())
                      : ListView.separated(
                          itemBuilder: (buildContext, index) {
                            return VerseContent(chapterContent[index]);
                          },
                          itemCount: chapterContent.length,
                          separatorBuilder: (buildContext, index) {
                            return Container(
                              color: Theme.of(context).primaryColor,
                              height: 1,
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 64, vertical: 12),
                            );
                          },
                        ),
                ),
              ),
            ],
          ),
        ));
  }

  void readFile(int chapterIndex) async {
    // once it called, the compiler will

    await Future.delayed(Duration(seconds: 5)); // block
    String text =
        await rootBundle.loadString('assets/files/${chapterIndex + 1}.txt');
    chapterContent = text.split('\n');

    setState(() {});
  }
}

// object->SuraDetailsArgs()
class SuraDetailsScreenArgs {
  // data class
  String title;
  int index;

  SuraDetailsScreenArgs(this.title, this.index);
}
