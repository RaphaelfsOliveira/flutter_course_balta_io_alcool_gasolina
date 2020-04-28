import 'package:app/widgets/logo.widget.dart';
import 'package:app/widgets/submitForm.widget.dart';
import 'package:app/widgets/successBox.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();
  var _busy = false;
  var _completed = false;
  var _resultText = 'Compensa utilizar alcool';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.8),
      body: ListView(
        children: <Widget>[
          Logo(),
          _completed
              ? SuccessBox(
                  result: _resultText,
                  reset: () {},
                )
              : SubmitForm(
                  busy: _busy,
                  submitFunc: () {},
                  gasCtrl: _gasCtrl,
                  alcCtrl: _alcCtrl,
                ),
        ],
      ),
    );
  }
}

Future calculate() {}
