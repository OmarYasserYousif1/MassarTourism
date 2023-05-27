import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'bookingscreen.dart';

class burjkhalifa extends StatefulWidget {
  const burjkhalifa({Key key}) : super(key: key);

  @override
  State<burjkhalifa> createState() => _burjkhalifaState();
}

class _burjkhalifaState extends State<burjkhalifa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("برج خليفه"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 600,
              child: Image.asset(
                "lib/assets/burgkhalifa.png",
                height: 200,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              color: Colors.blue,
              width: 300,
              height: 210,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "برج خليفه",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      "برج خليفه  ",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "اطول برج في العالم",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      " سعر الليله بالفندق درهم اماراتي 240",
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
