import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'bookingscreen.dart';

class ainelsokhna extends StatefulWidget {
  const ainelsokhna({Key key}) : super(key: key);

  @override
  State<ainelsokhna> createState() => _ainelsokhnaState();
}

class _ainelsokhnaState extends State<ainelsokhna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ain_elsokhna"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 600,
              child: Image.asset(
                "lib/assets/ainsokhna.png",
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
                      "العين السخنه",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      " شاطئ مشهور بمصر",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      "يفضل الذهاب له في الشتاء",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      " سعر الليله بالفندق جم 2000",
                      style: TextStyle(color: Colors.white, fontSize: 25),
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
