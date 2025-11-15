<p align="center">

<a href="https://opensource.org/licenses/BSD-3-Clause"><img src="https://img.shields.io/badge/licence-BSD%203-brightgreen" alt="License: BSD 3"></a>
<a href="https://pub.dev/packages/hexcolor"><img src="https://img.shields.io/badge/pub.dev-213-blue" alt="Pub.dev 213"></a>

</p>

# hexcolor_example

hex color plugin allows you to add hex color codes to your flutter projects

## Getting Started

sample usage

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

<p> <img src="./sample.png"/>
 </p>



[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/ggriffo)
