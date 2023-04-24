import 'package:flutter/material.dart';

// tsc == text style constant

const TextStyle tscMediumNumberText = TextStyle(
  fontSize: 45,
  fontWeight: FontWeight.w900,
);

const TextStyle tscBigNumberText = TextStyle(
  fontSize: 90,
  fontWeight: FontWeight.w700,
);

const TextStyle tscSmallText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w300,
    color: Color.fromRGBO(172, 168, 201, 1));

const TextStyle tscMediumText = TextStyle(
    fontSize: 18,
    color: Color.fromRGBO(219, 214, 250, 1),
    fontWeight: FontWeight.w500);

const TextStyle tscNotNormalWeight = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  color: Colors.red,
);

const TextStyle tscNormalWeight = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  color: Colors.green,
);
// csc = container style constant
const double cscBottomButtonHeight = 75;
const Color cscBottomButtomColor = Colors.blue;
const Color cscContainerColor = Color.fromRGBO(24, 21, 45, 1);
const Color cscInactiveContainerColor = Colors.transparent;
