import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Price extends StatelessWidget {
  var ctrl = new MoneyMaskedTextController();

  Price({
    @required this.ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: TextFormField(
          controller: ctrl,
          keyboardType: TextInputType.number,
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontFamily: 'Big Shoulders Display',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
