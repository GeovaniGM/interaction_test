import 'package:flutter/cupertino.dart';

class Filho extends StatelessWidget {
  final int numero;

  Filho(this.numero);

  @override
  Widget build(BuildContext context) {
    return Text(
      numero.toString(),
      style: TextStyle(fontSize: 20),
    );
  }
}
