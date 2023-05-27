import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'bookingscreen.dart';

class alex extends StatefulWidget {
  const alex({Key key}) : super(key: key);

  @override
  State<alex> createState() => _alexState();
}

class _alexState extends State<alex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الاسكندريه"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 600,
              child: Image.asset(
                "lib/assets/alex.png",
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
                      "الاسكندريه",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      "اشهر شاطئ بمصر  ",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      "يفضل الذهاب له في الصيف",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      " سعر الليله بالفندق جم 600",
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
