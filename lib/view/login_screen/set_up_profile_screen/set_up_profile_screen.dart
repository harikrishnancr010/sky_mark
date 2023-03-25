import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:skymark/view/bottom_navigation_bar/bottomnavigaton_bar.dart';
import 'package:skymark/core/colors/colors.dart';
import 'package:skymark/view/login_screen/phone_number_screen/phone_number_screen.dart';

import '../../../core/fonts/fonts.dart';
import '../../../core/size/size.dart';

class SetUpProfileScreen extends StatelessWidget {
  SetUpProfileScreen({super.key});
  final textController = TextEditingController();
  final labelText = "Enter Email";
  final hintText = 'John doe';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appBarCommonLogin(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Set up your profile',
                style: GoogleFont.loginScreenHeadTextStyle,
              ),
              commonHeight10,
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                style: GoogleFont.loginScreenSubTextStyle,
              ),
              commonHeight20,
              commonHeight10,
              TextFeildWidget(
                  textController: textController,
                  labelText: labelText,
                  hintText: hintText),
              commonHeight20,
              commonHeight10,
              TextFeildWidget(
                  textController: textController,
                  labelText: labelText,
                  hintText: hintText),
              commonHeight10,
              commonHeight20,
              TextFormField(
                  controller: textController,
                  decoration: InputDecoration(
                    prefixIcon: SizedBox(
                      width: 110,
                      child: Row(
                        children: [
                          commonWidth5,
                          SvgPicture.asset(
                              'assets/icons/Flag_of_India (2) 1.svg'),
                          commonWidth5,
                          Text(
                            '+91',
                            style: GoogleFont.phonenUmberTextStyle,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ),
                          Text(
                            '|',
                            style: GoogleFont.phonenUmberTextStyle,
                          ),
                        ],
                      ),
                    ),
                    labelText: 'WhatsApp Number',
                    hintText: '000 000 0000',
                    labelStyle: GoogleFont.loginScreenSubTextStyle,
                    hintStyle: GoogleFont.loginScreenSubTextStyle,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Skymark.primaryColorBlue2E,
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Skymark.lightGrey,
                        width: 1,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: GestureDetector(
            onTap: () {
              Get.offAll(() => BottomNavigationBarScreen());
            },
            child: CommonButtonLogin(buttonText: 'Creates an account')),
      ),
    );
  }
}

class TextFeildWidget extends StatelessWidget {
  const TextFeildWidget({
    super.key,
    required this.textController,
    required this.labelText,
    required this.hintText,
  });

  final TextEditingController textController;
  final String labelText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: textController,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          labelStyle: GoogleFont.loginScreenSubTextStyle,
          hintStyle: GoogleFont.loginScreenSubTextStyle,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Skymark.primaryColorBlue2E,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Skymark.lightGrey,
              width: 1,
            ),
          ),
        ));
  }
}
