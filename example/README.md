# hexcolor_example

how to use the hexcolor plugin.

hex color plugin allows you to add hex color codes to your flutter projects

## Getting Started

sample usage

```dart
import 'package:hexcolor/hexcolor.dart';
 Container(
          decoration: new BoxDecoration(
            color: Hexcolor('#34cc89'),
          ),
          child: Center(
            child: Text(
              'Running on: $_platformVersion\n',
              style: TextStyle(color: Hexcolor("#f2f2f2")),
            ),
          ),
        ),
```

```
Hexcolor("#yourhex")
```

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
