import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String name;
  var busy = false;
  var invert = false;
  Function func;

  CalcButton({
    @required this.name,
    @required this.busy,
    @required this.invert,
    @required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 130,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: EdgeInsets.all(40),
            height: 75,
            width: double.infinity,
            decoration: BoxDecoration(
              color: invert
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              child: Text(
                name,
                style: TextStyle(
                  color: invert ? Colors.white : Theme.of(context).primaryColor,
                  fontSize: 35,
                  fontFamily: 'Big Shoulders Display',
                ),
              ),
              onPressed: func,
            ),
          );
  }
}
