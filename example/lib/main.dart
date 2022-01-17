import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  String textColor = ColorToHex(Colors.teal).toString();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor("#ff4444"),
          title: const Text('HexColor'),
        ),
        body: Container(
          decoration: new BoxDecoration(
            color: Colors.blueGrey[100],
          ),
          child: Center(
            child: Container(
              height: 200,
              child: Column(
                children: [
                  Text(
                    "I'm using hexcolor",
                    style: TextStyle(color: HexColor("#f2f2f2")),
                  ),
                  Text(
                    "Hex From Material  $textColor",
                    style: TextStyle(color: ColorToHex(Colors.teal)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
