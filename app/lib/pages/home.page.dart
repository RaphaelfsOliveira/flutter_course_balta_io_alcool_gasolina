import 'package:app/widgets/logo.widget.dart';
import 'package:app/widgets/submitForm.widget.dart';
import 'package:app/widgets/successBox.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  reset: reset,
                )
              : SubmitForm(
                  busy: _busy,
                  gasCtrl: _gasCtrl,
                  alcCtrl: _alcCtrl,
                  submitFunc: calculate,
                ),
        ],
      ),
    );
  }

  Future calculate() {
    setState(() {
      _busy = true;
      _completed = false;
    });

    double alc =
        double.parse(_alcCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double gas =
        double.parse(_gasCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double res = alc / gas;

    return new Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        if (res >= 0.7) {
          _resultText = 'Compensa utilizar Gasolina';
        } else {
          _resultText = 'Compensa utilizar Álcool';
        }

        _busy = false;
        _completed = true;
      });
    });
  }

  reset() {
    setState(() {
      _gasCtrl = new MoneyMaskedTextController();
      _alcCtrl = new MoneyMaskedTextController();
      _busy = false;
      _completed = false;
    });
  }
}
