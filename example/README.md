# example


```dart
import 'package:hexcolor/hexcolor.dart';
  Text("Hello There!", style: TextStyle(color: HexColor("#009688"))),
        ElevatedButton(
          onPressed: () {
            setState(() {
              colorCode = Colors.teal.toHex();
            });
          },
          child: Text('Get Hex Color $colorCode'),
        ),
```

```
HexColor("#yourhex")
```