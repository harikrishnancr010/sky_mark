import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

class Skymark {
  static Color primaryColorBlue2E = HexColor('#2E3F99');
  static Color secondaryColorBlue25 = HexColor('#254C9A');
  static Color greenColor = HexColor('#73BF44');
  static Color blackColor = HexColor('#000000');
  static Color lightGreenColor = HexColor('#EAFAE0');
  static Color whiteColor = HexColor('#FFFFFF');
  static Color whiteColorLoginScreen = HexColor('#FCFCFF');
  static Color greyColor = HexColor('#9C9C9C');
  static Color lightGrey = HexColor('#DDDDDD');
  static Color bagroundColor = HexColor('#F5F5F5');
  static Color whitef7 = HexColor('#F7F7F7');
  static Color whitef2 = HexColor('#F2F4FF');

  static Color shadowColor = HexColor('#EEF3FA');

  static Color searchLabelColor = const Color.fromARGB(78, 255, 255, 255);
}

final shadowCommon = [BoxShadow(blurRadius: 25, color: Skymark.shadowColor)];
