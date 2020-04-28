import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(60),
      ),
      child: FlatButton(
        child: Text(
          'Calcular',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 35,
            fontFamily: 'Big Shoulders Display',
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
