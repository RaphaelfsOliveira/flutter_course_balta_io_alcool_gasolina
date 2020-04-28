import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String buttonName;

  CalcButton({
    @required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(60),
      ),
      child: FlatButton(
        child: Text(
          buttonName,
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
