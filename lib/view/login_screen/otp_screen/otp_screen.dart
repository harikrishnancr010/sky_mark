import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skymark/core/colors/colors.dart';
import 'package:skymark/core/size/size.dart';
import 'package:skymark/view/login_screen/phone_number_screen/phone_number_screen.dart';
import 'package:skymark/view/login_screen/set_up_profile_screen/set_up_profile_screen.dart';

import '../../../core/fonts/fonts.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appBarCommonLogin(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter your \nverification code',
                  style: GoogleFont.loginScreenHeadTextStyle,
                ),
                commonHeight10,
                Text(
                  'Please type the verification code sent to \n+91 6292046986',
                  style: GoogleFont.loginScreenSubTextStyle,
                ),
                commonHeight20,
                OtpFormWidget(),
              ],
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(text: 'Resend in', style: GoogleFont.resentOtpTextClor),
              TextSpan(text: ' 00:30', style: GoogleFont.otpTimerColor)
            ])),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: GestureDetector(
            onTap: () {
              Get.to(() => SetUpProfileScreen());
            },
            child: const CommonButtonLogin(buttonText: 'Continue')),
      ),
    );
  }
}

class OtpFormWidget extends StatelessWidget {
  const OtpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          otpWidget(context),
          otpWidget(context),
          otpWidget(context),
          otpWidget(context),
          otpWidget(context),
          otpWidget(context),
        ],
      ),
    );
  }
}

final datata = [];

Widget otpWidget(context) {
  return SizedBox(
    width: 43,
    height: 54,
    child: TextFormField(
        onSaved: (newValue) {
          log(newValue.toString());
        },
        onChanged: (value) {
          // log('changes call');
          datata.add(value);
          log(value);
          log(datata.toString());
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        keyboardType: TextInputType.number,
        style: GoogleFont.homeHeadTextStyle,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        showCursor: false,
        decoration: InputDecoration(
          hintText: '0',
          hintStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Skymark.lightGrey),
          fillColor: Skymark.bagroundColor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Skymark.primaryColorBlue2E),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Skymark.lightGrey)),
        )),
  );
}
