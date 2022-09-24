import 'package:flutter/material.dart';
import 'color.dart';

final ButtonStyle buttonCardPrimary = ElevatedButton.styleFrom(
  minimumSize: Size(327, 50),
  primary: softGray2,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
  ),
);
