<p align="center">

<a href="https://opensource.org/licenses/BSD-3-Clause"><img src="https://img.shields.io/badge/licence-BSD%203-brightgreen" alt="License: BSD 3"></a>
<a href="https://pub.dev/packages/hexcolor"><img src="https://img.shields.io/badge/pub.dev-147-blue" alt="Pub.dev 147"></a>

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


### Color to hex

```
String textColor = ColorToHex(Colors.teal).toString();
```


[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/ggriffo)

