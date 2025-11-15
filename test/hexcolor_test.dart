import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  group('ColorToHex', () {
    test('converts color to hex with hash', () {
      final color = const Color(0xFFAABBCC);
      expect(color.toHex(), '#FFAABBCC');
    });

    test('converts color to hex without hash', () {
      final color = const Color(0xFFAABBCC);
      expect(color.toHex(leadingHash: false), 'FFAABBCC');
    });
  });

  group('HexColor', () {
    test('parses 6-digit hex with hash', () {
      final color = HexColor('#FF0000');
      expect(color.value, 0xFFFF0000);
    });

    test('parses 6-digit hex without hash', () {
      final color = HexColor('FF0000');
      expect(color.value, 0xFFFF0000);
    });

    test('parses 8-digit hex with alpha', () {
      final color = HexColor('#80FF0000');
      expect(color.value, 0x80FF0000);
    });

    test('parses 3-digit shorthand', () {
      final color = HexColor('#ABC');
      expect(color.value, 0xFFAABBCC);
    });

    test('parses 4-digit shorthand with alpha', () {
      final color = HexColor('#FABC');
      expect(color.value, 0xFFAABBCC);
    });

    test('throws on empty string', () {
      expect(() => HexColor(''), throwsFormatException);
    });

    test('throws on invalid length', () {
      expect(() => HexColor('#FFFFF'), throwsFormatException);
    });

    test('throws on invalid characters', () {
      expect(() => HexColor('#GGGGGG'), throwsFormatException);
    });

    test('tryParse returns color on valid input', () {
      final color = HexColor.tryParse('#FF0000');
      expect(color?.value, 0xFFFF0000);
    });

    test('tryParse returns null on invalid input', () {
      final color = HexColor.tryParse('invalid');
      expect(color, isNull);
    });
  });
}
