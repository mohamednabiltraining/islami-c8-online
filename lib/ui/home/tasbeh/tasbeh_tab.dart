import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/s.png',width: 300,height: 250,),
            SizedBox(
              width: double.infinity,
              height: 30,
            ),
            Text(
              'عدد التسبيحات',
              style: TextStyle(fontSize: 26),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 60,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0x8CB7935F),
              ),
              child: Center(
                  child: Text(
                    '$num',
                    style: TextStyle(fontSize: 24),
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                num++;
                setState(() {

                });
              },
              child: Text(
                'سبحان الله',
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
