import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:traveling_app/screens/booking/alauxor.dart';
import 'package:traveling_app/screens/booking/alex.dart';
import 'package:traveling_app/screens/booking/elainelsokhna.dart';

class egyptbooking extends StatefulWidget {
  const egyptbooking({Key key}) : super(key: key);

  @override
  State<egyptbooking> createState() => _egyptbookingState();
}

class _egyptbookingState extends State<egyptbooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("حجز في مصر "),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ainelsokhna()),
                  );
                },
                child: Card(
                  color: Colors.blueAccent,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "العين السخنه",
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
                    MaterialPageRoute(builder: (context) => alex()),
                  );
                },
                child: Card(
                  color: Colors.blueAccent,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "الاسكندريه",
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
                    MaterialPageRoute(builder: (context) => alauxor()),
                  );
                },
                child: Card(
                  color: Colors.blueAccent,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "الاقصر",
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
      ),
    );
  }
}
