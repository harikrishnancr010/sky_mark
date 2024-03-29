import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:skymark/core/colors/colors.dart';
import 'package:skymark/core/fonts/fonts.dart';
import 'package:skymark/core/size/size.dart';
import 'package:skymark/view/login_screen/otp_screen/otp_screen.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  final buttonText = 'Continue';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBody: true,
      appBar: appBarCommonLogin(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(
          //   width: double.infinity,
          //   height: 65,
          //   child: Padding(
          //     padding: const EdgeInsets.only(right: 200),
          //     child: Container(
          //       width: 10,
          //       height: 10,
          //       color: Colors.amber,
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter your \nphone number',
                  style: GoogleFont.loginScreenHeadTextStyle,
                ),
                commonHeight10,
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: GoogleFont.loginScreenSubTextStyle,
                ),
                commonHeight20,
                Container(
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Skymark.lightGrey),
                      color: Skymark.whiteColorLoginScreen),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      commonWidth15,
                      SizedBox(
                          width: 90,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/Flag_of_India (2) 1.svg'),
                              commonWidth5,
                              Text(
                                '+91',
                                style: GoogleFont.phonenUmberTextStyle,
                              ),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          )),
                      Text(
                        "|",
                        style:
                            TextStyle(fontSize: 22, color: Skymark.lightGrey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextField(
                        autocorrect: false,
                        showCursor: false,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "000 000 0000",
                            hintStyle: GoogleFont.phonenUmberTextStyleInactive),
                      ))
                    ],
                  ),
                ),
                // SizedBox(
                //   height: height / 2,
                // ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: GestureDetector(
          onTap: () {
            Get.to(() => OtpScreen());
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: CommonButtonLogin(buttonText: buttonText),
          )),
    );
  }
}

class CommonButtonLogin extends StatelessWidget {
  const CommonButtonLogin({
    super.key,
    required this.buttonText,
  });

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Skymark.primaryColorBlue2E),
      child: Center(
        child: Text(
          buttonText,
          style: GoogleFont.buttonTextStyleLogin,
        ),
      ),
    );
  }
}

PreferredSizeWidget appBarCommonLogin() {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.all(8.5),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: Skymark.whitef7, borderRadius: BorderRadius.circular(45)),
        child: Center(
            child: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Skymark.blackColor,
          size: 18,
        )),
      ),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
  );
}
