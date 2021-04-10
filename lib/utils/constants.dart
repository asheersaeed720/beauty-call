import 'package:flutter/material.dart';

InputDecoration buildAuthTextFieldInputDecoration(hintText, IconData icon) {
  return InputDecoration(
    hintText: '$hintText',
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
    isDense: true,
    labelStyle: TextStyle(height: 1.6),
    border: InputBorder.none,
    enabledBorder: InputBorder.none,
  );
}
