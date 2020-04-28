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
              SizedBox(width: sizeFuelPrice),
              Fuel(fuelName: 'Gasolina'),
              SizedBox(width: sizeFuelPrice),
              Price(ctrl: _gasCtrl),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(width: sizeFuelPrice),
              Fuel(fuelName: 'Alcool'),
              SizedBox(width: sizeFuelPrice),
              Price(ctrl: _alcCtrl),
            ],
          ),
          Container(
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
          )
        ],
      ),
    );
  }
}
