import 'package:app/widgets/calcButton.widget.dart';
import 'package:flutter/material.dart';

class SuccessBox extends StatelessWidget {
  var result = '';
  Function reset;

  SuccessBox({
    @required this.result,
    @required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(60),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 50),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 50,
              fontFamily: 'Big Shoulders Display',
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          CalcButton(
            name: 'Calcular Novamente',
            busy: false,
            invert: true,
            func: reset,
          ),
        ],
      ),
    );
  }
}
