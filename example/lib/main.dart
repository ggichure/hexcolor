import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text(
          'Running on: _platformVersion\n',
          style: TextStyle(color: HexColor("#f2f2f2")),
        ),
        Text(
          "Hex From Material  textColor",
          style: TextStyle(color: ColorToHex(Colors.teal)),
        ),
      ]),
    );
  }
}
