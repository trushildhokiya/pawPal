import 'package:flutter/material.dart';

/**
 * ENDPOINTS API
 */
const kBaseUri = "http://10.0.2.2:5001";
/**
 * TEXT STYLE
 */
const kHeadingTextStyle = TextStyle(
  fontFamily: "Roboto",
  fontSize: 50,
  fontWeight: FontWeight.w600,
  color: kYellowGold,
);

const kHeading2TextStyle = TextStyle(
  fontFamily: "Roboto",
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

const kButtonTextStyle = TextStyle(
    fontFamily: "Inter",
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: kBrown
);

const kNormalTextStyle = TextStyle(
  fontFamily: "Inter",
  fontSize: 10,
  color: kBlack
);

/**
 * INPUT DEORATIONS
 */

const kInputDecoration = InputDecoration(
  hintText: "Email",
  isDense: true,
);

/**
 * COLORS
 */
const kYellowGold = Color(0xFFFBAF41);
const kBrown = Color(0xFF420E10);
const kBlack = Color(0xFF292826);