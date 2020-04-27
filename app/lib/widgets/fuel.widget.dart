import 'package:flutter/material.dart';

class Fuel extends StatelessWidget {
  final String fuelName;

  Fuel({
    @required this.fuelName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      alignment: Alignment.centerRight,
      child: Text(
        fuelName,
        style: TextStyle(
          color: Colors.white,
          fontSize: 35,
          fontFamily: 'Big Shoulders Display',
        ),
      ),
    );
  }
}
