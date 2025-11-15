import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? colorCode = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Hello There!", style: TextStyle(color: HexColor("#009688"))),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  colorCode = Colors.teal.toHex();
                });
              },
              child: Text('Get Hex Color $colorCode'),
            ),
          ],
        ),
      ),
    );
  }
}
