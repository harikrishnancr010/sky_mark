import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:skymark/core/colors/colors.dart';
import 'package:skymark/core/fonts/fonts.dart';
import 'package:skymark/core/size/size.dart';
import 'package:skymark/view/main_screens/select_country_screen/select_country_screen.dart';
import 'package:skymark/view/my_account_screens/event_screen/event_screen.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarCommonHome(isBackbutton: false, headText: 'My account'),
          Expanded(
              child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 8),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  width: double.infinity,
                  height: 939,
                  decoration: BoxDecoration(
                      color: Skymark.whiteColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleWidgetMyAccount(title: 'Account'),
                      commonHeight15,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 46,
                                height: 46,
                                decoration: BoxDecoration(
                                    color: Skymark.blackColor,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://avatoon.me/wp-content/uploads/2021/09/Cartoon-Pic-Ideas-for-DP-Profile-10.png'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(25)),
                              ),
                              commonWidth15,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gary Torres',
                                    style: GoogleFont.myAccountUserNameStyle,
                                  ),
                                  Text(
                                    'Personal info',
                                    style: GoogleFont.homeTileSubTextStyle,
                                  )
                                ],
                              )
                            ],
                          ),
                          const ArrowWidgetMyAccountScreen(size: 40)
                        ],
                      ),
                      commonHeight20,
                      commonHeight5,

                      //---------------------------Services ------------------------------------------------------------
                      //==================================================================================================
                      const TitleWidgetMyAccount(title: 'Services'),
                      commonHeight15,
                      GestureDetector(
                        onTap: () {
                          log('upload doc');
                        },
                        child: const MyAccountSubTextFullTile(
                            svgIcons: 'assets/icons/document-upload.svg',
                            title: 'Upload documents'),
                      ),
                      GestureDetector(
                        onTap: () {
                          log('My application');
                        },
                        child: const MyAccountSubTextFullTile(
                            svgIcons: 'assets/icons/myapplication.svg',
                            title: 'My application'),
                      ),
                      GestureDetector(
                        onTap: () {
                          log('Events');
                          Get.to(() => EventsScreen());
                        },
                        child: const MyAccountSubTextFullTile(
                            svgIcons: 'assets/icons/events.svg',
                            title: 'Events'),
                      ),
                      GestureDetector(
                        onTap: () {
                          log('Zoom Meeting');
                        },
                        child: const MyAccountSubTextFullTile(
                            svgIcons: 'assets/icons/zoom.svg',
                            title: 'Zoom Meeting'),
                      ),
                      commonHeight5,

                      //---------------------------Settings------------------------------------------------------------
                      //==================================================================================================
                      const TitleWidgetMyAccount(title: 'Settings'),
                      commonHeight20,
                      GestureDetector(
                        onTap: () {
                          log('Change password');
                        },
                        child: const MyAccountSubTextFullTile(
                            svgIcons: 'assets/icons/changepassword.svg',
                            title: 'Change password'),
                      ),
                      GestureDetector(
                        onTap: () {
                          log('Delete My Account');
                        },
                        child: const MyAccountSubTextFullTile(
                            svgIcons: 'assets/icons/deleteac.svg',
                            title: 'Delete My Account'),
                      ),
                      commonHeight15,
                      //---------------------------information ------------------------------------------------------------
                      //==================================================================================================
                      const TitleWidgetMyAccount(title: 'Information'),
                      commonHeight20,
                      GestureDetector(
                        onTap: () {
                          log('About Us');
                        },
                        child: const MyAccountSubTextFullTile(
                            svgIcons: 'assets/icons/aboutus.svg',
                            title: 'About Us'),
                      ),
                      GestureDetector(
                        onTap: () {
                          log('Terms of Use');
                        },
                        child: const MyAccountSubTextFullTile(
                            svgIcons: 'assets/icons/terms.svg',
                            title: 'Terms of Use'),
                      ),
                      GestureDetector(
                        onTap: () {
                          log('Privacy Policy');
                        },
                        child: const MyAccountSubTextFullTile(
                            svgIcons: 'assets/icons/privacy.svg',
                            title: 'Privacy Policy'),
                      ),
                      GestureDetector(
                        onTap: () {
                          log("FAQ’s");
                        },
                        child: const MyAccountSubTextFullTile(
                            svgIcons: 'assets/icons/faq.svg', title: "FAQ’s"),
                      ),
                      GestureDetector(
                        onTap: () {
                          log('Contact');
                        },
                        child: const MyAccountSubTextFullTile(
                            svgIcons: 'assets/icons/contact.svg',
                            title: 'Contact'),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Container(
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1.5, color: Skymark.primaryColorBlue2E)),
                  child: Center(
                    child: Text(
                      'Logout',
                      style: GoogleFont.myAccountScreenLogOutButtontext,
                    ),
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}

class MyAccountSubTextFullTile extends StatelessWidget {
  const MyAccountSubTextFullTile({
    super.key,
    required this.svgIcons,
    required this.title,
  });

  final String svgIcons;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              myAccountSvgIconsWidget(svgIcons: svgIcons),
              commonWidth10,
              Text(
                title,
                style: GoogleFont.myAccountScreenSubtext,
              )
            ],
          ),
          const ArrowWidgetMyAccountScreen(size: 35)
        ],
      ),
    );
  }
}

class myAccountSvgIconsWidget extends StatelessWidget {
  const myAccountSvgIconsWidget({
    super.key,
    required this.svgIcons,
  });

  final String svgIcons;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
          color: Skymark.whitef2, borderRadius: BorderRadius.circular(22)),
      child: Center(
        child: SvgPicture.asset(svgIcons),
      ),
    );
  }
}

class ArrowWidgetMyAccountScreen extends StatelessWidget {
  const ArrowWidgetMyAccountScreen({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          color: Skymark.whitef2, borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Skymark.primaryColorBlue2E,
          size: 18,
        ),
      ),
    );
  }
}

class TitleWidgetMyAccount extends StatelessWidget {
  const TitleWidgetMyAccount({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFont.myAccountScreenHeadtext,
    );
  }
}
