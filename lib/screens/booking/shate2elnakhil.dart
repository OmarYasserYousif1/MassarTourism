import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:traveling_app/screens/booking/bookingscreen.dart';

class shate2elnakhil extends StatefulWidget {
  const shate2elnakhil({Key key}) : super(key: key);

  @override
  State<shate2elnakhil> createState() => _shate2elnakhilState();
}

class _shate2elnakhilState extends State<shate2elnakhil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("شاطئ النخيل"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 600,
              child: Image.asset(
                "lib/assets/palm-jumeirah-island-dubai-1.png",
                height: 200,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              color: Colors.blue,
              width: 300,
              height: 210,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      " شاطئ النخيل",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      " شاطئ مشهور بدبي",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      "يفضل الذهاب له في طوال العام",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      " سعر الليله بالفندق ريال سعودي 1664",
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
