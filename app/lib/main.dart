import 'package:flutter/material.dart';
import 'package:app/widgets/logo.widget.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:app/widgets/price.widget.dart';
import 'package:app/widgets/fuel.widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();

  final double sizeFuelPrice = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.8),
      body: ListView(
        children: <Widget>[
          Logo(),
          Row(
            children: <Widget>[
              Fuel(fuelName: 'Gasolina'),
              SizedBox(width: sizeFuelPrice),
              Price(ctrl: _gasCtrl),
            ],
          ),
          Row(
            children: <Widget>[
              Fuel(fuelName: 'Alcool'),
              SizedBox(width: sizeFuelPrice),
              Price(ctrl: _alcCtrl),
            ],
          ),
        ],
      ),
    );
  }
}
