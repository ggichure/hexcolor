import 'package:flutter/material.dart';

/// Extension on [Color] to convert colors to hexadecimal string representation.
extension ColorToHex on Color {
  /// Converts this color to a HEX string in ARGB format, e.g. #FFAABBCC.
  String toHex({bool leadingHash = true}) {
    final hex = toARGB32().toRadixString(16).padLeft(8, '0').toUpperCase();

    return leadingHash ? '#$hex' : hex;
  }
}

/// A [Color] subclass that creates colors from hexadecimal strings.
///
/// Supports multiple formats:
/// - 6-digit: #RRGGBB or RRGGBB (defaults to FF alpha)
/// - 8-digit: #AARRGGBB or AARRGGBB (full format with alpha)
///
/// The '#' prefix is optional. Common prefixes '0x' and '0X' are also supported.
///
/// Examples:
/// ```dart
/// final red = HexColor('#FF0000');
/// ```
class HexColor extends Color {
  /// Creates a [Color] from a hexadecimal string.
  ///
  /// Accepts formats: #RGB, #ARGB, #RRGGBB, #AARRGGBB
  /// The '#' prefix is optional.
  ///
  /// Throws [FormatException] if the format is invalid.
  HexColor(String hex) : super(_parseHexToValue(hex));

  /// Parses a hex string and converts it to a Color value integer.
  ///
  /// Throws [FormatException] if the hex string is invalid.
  static int _parseHexToValue(String hex) {
    final normalized = _normalizeHex(hex);
    final argb = _parseToARGB(normalized);
    return _argbToColorValue(argb);
  }

  /// Normalizes the hex string by removing prefixes and whitespace.
  static String _normalizeHex(String hex) {
    hex = hex
        .replaceAll('#', '')
        .replaceAll('0x', '')
        .replaceAll('0X', '')
        .trim();

    if (hex.isEmpty) {
      throw const FormatException('Hex color string is empty.');
    }

    return hex.toUpperCase();
  }

  /// Parses the normalized hex string to ARGB format (8 characters).
  static String _parseToARGB(String hex) {
    // Handle 3-digit shorthand (e.g., "ABC" -> "AABBCC")
    if (hex.length == 3) {
      hex = hex.split('').map((c) => c * 2).join();
    }

    // Handle 4-digit shorthand with alpha (e.g., "FABC" -> "FFAABBCC")
    if (hex.length == 4) {
      hex = hex.split('').map((c) => c * 2).join();
    }

    // Add default alpha if not provided (6-digit RGB)
    if (hex.length == 6) {
      hex = 'FF$hex';
    }

    if (hex.length != 8) {
      throw FormatException(
        'Invalid hex color length (${hex.length}). '
        'Expected 3, 4, 6, or 8 characters.',
      );
    }

    // Validate hex characters
    if (!RegExp(r'^[0-9A-F]{8}$').hasMatch(hex)) {
      throw const FormatException(
        'Invalid hex color format. Contains non-hexadecimal characters.',
      );
    }

    return hex;
  }

  /// Converts ARGB hex string to Color value integer.
  static int _argbToColorValue(String argb) {
    final a = int.parse(argb.substring(0, 2), radix: 16);
    final r = int.parse(argb.substring(2, 4), radix: 16);
    final g = int.parse(argb.substring(4, 6), radix: 16);
    final b = int.parse(argb.substring(6, 8), radix: 16);

    // Color value format: 0xAARRGGBB
    return (a << 24) | (r << 16) | (g << 8) | b;
  }

  /// Attempts to parse a hex string without throwing an exception.
  ///
  /// Returns a [Color] if successful, or null if the format is invalid.
  ///
  /// Example:
  /// ```dart
  /// final color = HexColor.tryParse('#FF0000'); // Color
  /// final invalid = HexColor.tryParse('invalid'); // null
  /// ```
  static Color? tryParse(String hex) {
    try {
      return HexColor(hex);
    } on FormatException {
      return null;
    }
  }
}
