import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:skymark/view/bottom_navigation_bar/bottomnavigaton_bar.dart';
import 'package:skymark/view/core/colors/colors.dart';
import 'package:skymark/view/home_screen/home_screen.dart';
import 'package:skymark/view/login_screen/otp_screen/otp_screen.dart';
import 'package:skymark/view/login_screen/phone_number_screen/phone_number_screen.dart';
import 'package:skymark/view/login_screen/set_up_profile_screen/set_up_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(canvasColor: Skymark.whiteColorLoginScreen),
        home: SetUpProfileScreen());
  }
}
