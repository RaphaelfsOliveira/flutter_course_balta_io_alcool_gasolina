import 'package:app/widgets/calcButton.widget.dart';
import 'package:app/widgets/fuel.widget.dart';
import 'package:app/widgets/price.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  final double sizeFuelPrice = 50;

  SubmitForm({
    @required this.busy,
    @required this.submitFunc,
    @required this.gasCtrl,
    @required this.alcCtrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(width: sizeFuelPrice),
            Fuel(fuelName: 'Gasolina'),
            SizedBox(width: sizeFuelPrice),
            Price(ctrl: gasCtrl),
          ],
        ),
        Row(
          children: <Widget>[
            SizedBox(width: sizeFuelPrice),
            Fuel(fuelName: 'Alcool'),
            SizedBox(width: sizeFuelPrice),
            Price(ctrl: alcCtrl),
          ],
        ),
        SizedBox(height: 20),
        CalcButton(
          name: 'Calcular',
          busy: busy,
          invert: false,
          func: submitFunc,
        ),
      ],
    );
  }
}
