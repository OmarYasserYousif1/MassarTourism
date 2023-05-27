import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:traveling_app/screens/booking/bookingscreen.dart';

class ra2selkhema extends StatefulWidget {
  const ra2selkhema({Key key}) : super(key: key);

  @override
  State<ra2selkhema> createState() => _ra2selkhemaState();
}

class _ra2selkhemaState extends State<ra2selkhema> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("رأس الخيمه"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 600,
              child: Image.asset(
                "lib/assets/ra2selkhema.png",
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
                      "  رأس الخيمه",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "تعتبر من اهم المعالم السياحيه في دوله الامارات ",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "تتميز بأمتلأها ",
                      style: TextStyle(color: Colors.white, fontSize: 20),
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
