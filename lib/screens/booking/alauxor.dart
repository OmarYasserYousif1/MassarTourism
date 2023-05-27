import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'bookingscreen.dart';

class alauxor extends StatefulWidget {
  const alauxor({Key key}) : super(key: key);

  @override
  State<alauxor> createState() => _alauxorState();
}

class _alauxorState extends State<alauxor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الاقصر"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 600,
              child: Image.asset(
                "lib/assets/بانوراما_من_داخل_معبد_الاقصر.png",
                height: 200,
              ),
            ),
            Container(
              color: Colors.blue,
              width: 300,
              height: 210,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "الاقصر",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      "اشهر واكبر منطقه اثريه بالعالم  ",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "يفضل الذهاب له في الشتاء",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      " سعر الليله بالفندق جم 700",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyForm()),
                    );
                  },
                  child: Text("قم بالحجز")),
            )
          ],
        ),
      ),
    );
  }
}
