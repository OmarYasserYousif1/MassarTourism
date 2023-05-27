import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:traveling_app/screens/booking/abudabibooking.dart';
import 'package:traveling_app/screens/booking/egyptbooking.dart';

class booking extends StatefulWidget {
  const booking({Key key}) : super(key: key);

  @override
  State<booking> createState() => _bookingState();
}

class _bookingState extends State<booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/bookinghotelbackground.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => egyptbooking()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 200,
                          color: Color.fromARGB(107, 255, 255, 0),
                          child: Center(
                              child: Text(
                            "مصر",
                            style: TextStyle(
                                fontSize: 50,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          ))),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => abudhabibooking()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 200,
                          color: Color.fromARGB(123, 91, 131, 149),
                          child: Center(
                              child: Text(
                            " الامارات ",
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ))),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
