import 'package:flutter/material.dart';

class genLoginSignupHeader extends StatelessWidget {
  String headerName;
  genLoginSignupHeader(this.headerName);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 50.0,
          ),
          Text(
            headerName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 30.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Image(
            image: AssetImage("lib/assets/massar.png"),
            height: 200,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "تطبيق مسار",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black38,
              fontSize: 25.0,
            ),
          ),
        ],
      ),
    );
  }
}
