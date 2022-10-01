import 'package:hexcolor/hexcolor.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = HexColor('#ffffff');

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome, isTrue);
    });
  });
}
