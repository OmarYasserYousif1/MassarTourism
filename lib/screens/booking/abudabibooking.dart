import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:traveling_app/screens/booking/burjkhalifa.dart';
import 'package:traveling_app/screens/booking/ra2selkhema.dart';
import 'package:traveling_app/screens/booking/shate2elnakhil.dart';

class abudhabibooking extends StatefulWidget {
  const abudhabibooking({Key key}) : super(key: key);

  @override
  State<abudhabibooking> createState() => _abudhabibookingState();
}

class _abudhabibookingState extends State<abudhabibooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("حجز في الامارات"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => burjkhalifa()),
                );
              },
              child: Card(
                color: Colors.blueAccent,
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        " برج خليفه",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => shate2elnakhil()),
                );
              },
              child: Card(
                color: Colors.blueAccent,
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "شواطيئ النخيل",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ra2selkhema()),
                );
              },
              child: Card(
                color: Colors.blueAccent,
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "رأس الخيمه",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
