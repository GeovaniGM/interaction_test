import 'dart:io';

import 'package:flutter/material.dart';

import 'Filho.dart';

class Pai extends StatefulWidget {
  @override
  _PaiState createState() => _PaiState();
}

class _PaiState extends State<Pai> {
  int numero = 0;

  void dec() {
    setState(() {
      numero--;
    });
  }

  void inc() {
    setState(() {
      numero++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                child: Text('dec'),
                onPressed: dec,
              ),
              RaisedButton(
                child: Text('inc'),
                onPressed: inc,
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Filho(numero),
        ],
      ),
    );
  }
}
