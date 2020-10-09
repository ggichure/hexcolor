<p align="center">

<a href="https://opensource.org/licenses/BSD-3-Clause"><img src="https://img.shields.io/badge/licence-BSD%203-brightgreen" alt="License: BSD 3"></a>
<a href="https://pub.dev/packages/hexcolor"><img src="https://img.shields.io/badge/pub.dev-33-blue" alt="Pub.dev 33"></a>

</p>


# hexcolor_example

how to use the hexcolor plugin.

hex color plugin allows you to add hex color codes to your flutter projects

## Getting Started

sample usage

```dart
import 'package:hexcolor/hexcolor.dart';
                    Text( 
                      'Running on: $_platformVersion\n',
                    style: TextStyle(color: HexColor("#f2f2f2")),
                  ),
                  Text(
                    "Hex From Material  $textColor",
                    style: TextStyle(color: ColorToHex(Colors.teal)),
                  ),
```

```
Hexcolor("#yourhex")
```
<p> <img src="https://raw.githubusercontent.com/ggichure/hexcolor/master/Screenshot%20from%202019-12-10%2008-49-21.png"/>
 </p>
A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
