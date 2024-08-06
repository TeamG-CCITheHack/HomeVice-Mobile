import 'package:flutter/material.dart';

final transparentButtonBlackBorder = ElevatedButton.styleFrom(
  backgroundColor: Colors.white,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
  side: const BorderSide(width: 0.8, color: Colors.black),
).merge(ButtonStyle(
  overlayColor:
      WidgetStateProperty.all<Color>(const Color.fromRGBO(0, 0, 0, 0.1)),
));

final transparentButton = ElevatedButton.styleFrom(
  backgroundColor: Colors.white,
  side: const BorderSide(width: 0.8, color: Color(0xFF4699BC)),
).merge(ButtonStyle(
  overlayColor: WidgetStateProperty.all<Color>(const Color(0xFF4699BC)),
));

final blackButton = ElevatedButton.styleFrom(
  backgroundColor: Colors.black,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
).merge(ButtonStyle(
  overlayColor:
      WidgetStateProperty.all<Color>(const Color.fromRGBO(58, 151, 169, 1)),
));

final primaryButton = ElevatedButton.styleFrom(
  backgroundColor: const Color(0xFF4699BC),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20.0),
  ),
).merge(ButtonStyle(
  overlayColor: WidgetStateProperty.all<Color>(const Color(0xFFFFFFFF)),
));
