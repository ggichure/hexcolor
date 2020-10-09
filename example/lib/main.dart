import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    //  initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await HexColor.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  String textColor = ColorToHex(Colors.teal).toString();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor("#ffff4444"),
          title: const Text('Plugin example app'),
        ),
        body: Container(
          decoration: new BoxDecoration(
            color: ColorToHex(Colors.blueGrey[100]),
          ),
          child: Center(
            child: Container(
              height: 200,
              child: Column(
                children: [
                  Text(
                    'Running on: $_platformVersion\n',
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
