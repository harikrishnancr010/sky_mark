import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skymark/core/colors/colors.dart';
import 'package:skymark/core/fonts/fonts.dart';
import 'package:skymark/core/size/size.dart';
import 'package:skymark/dummy.dart';
import 'package:skymark/view/login_screen/phone_number_screen/phone_number_screen.dart';
import 'package:skymark/view/seondary_screens/destination_details/destination_detailed_screen.dart';
import 'package:skymark/view/seondary_screens/university_full_details/widget/image_swiper_widget.dart';

class UniversityFullDetailsScreen extends StatelessWidget {
  const UniversityFullDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    log(width.toString());
    return Scaffold(
      extendBody: true,
      body: Column(
        children: [
          Stack(
            children: [
              SwiperWidget(swiperHeight: 238, imageList: imageList),
              Positioned(
                right: 25,
                top: 50,
                child: Container(
                  width: 50,
                  height: 25,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(140, 0, 0, 0),
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star_rate_rounded,
                        color: Colors.amber,
                      ),
                      Text(
                        '4.9',
                        style: GoogleFont.choiceChipStylewhite,
                      )
                    ],
                  ),
                ),
              ),
              const Positioned(left: 24, top: 50, child: BackArrowWhite())
            ],
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
            ),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  width: double.infinity,
                  height: responsiveHight(width),
                  decoration: BoxDecoration(
                      boxShadow: shadowCommon,
                      color: Skymark.whiteColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Container(
                        width: 59,
                        height: 59,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/en/8/80/This_is_the_logo_for_The_Open_University.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      commonWidth15,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            // color: Colors.deepOrange,
                            width: commonWidth(width),
                            child: Text(
                              'The University of Edinburgh',
                              style: GoogleFont.destinationDetailsHeadTextStyle,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                          SizedBox(
                            // color: Colors.amber,
                            width: commonWidth(width),
                            child: Text(
                              'Old College, South Bridge, Edinburgh EH8 9YL, United Kingdom',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                          SizedBox(
                              width: commonWidth(width),
                              child: Text(
                                'Established: 1583',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                commonHeight20,
                ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: shadowCommon,
                          color: Skymark.whiteColor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About University',
                            style: GoogleFont.myAccountUserNameStyle,
                          ),
                          commonHeight10,
                          Text(
                            '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.''',
                            style: GoogleFont
                                .destinationDetailDiscriptionStyleBlack,
                          ),
                          commonHeight10,
                          Text(
                            'Accommodation Details',
                            style: GoogleFont.myAccountUserNameStyle,
                          ),
                          commonHeight10,
                          Text(
                            '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here.
''',
                            style: GoogleFont
                                .destinationDetailDiscriptionStyleBlack,
                          ),
                          ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: List.generate(5, (index) {
                              return UnvercityDetailsListviewSecOne(
                                  width: width);
                            }),
                          ),

                          //Facilities
                          Text(
                            'Facilities',
                            style: GoogleFont.myAccountUserNameStyle,
                          ),
                          commonHeight10,
                          Text(
                            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                            style: GoogleFont
                                .destinationDetailDiscriptionStyleBlack,
                          ),
                          commonHeight10,
                          // ListView(
                          //   shrinkWrap: true,
                          //   physics: NeverScrollableScrollPhysics(),
                          //   children: List.generate(6, (index) {
                          //     log('${width / 2.74}');
                          //     return width > 359
                          //         ? Column(
                          //             children: [
                          //               Row(
                          //                 children: [
                          //                   Container(
                          //                     width: width / 2.74,
                          //                     height: 60,
                          //                     child: Row(
                          //                       children: [
                          //                         SvgPicture.asset(
                          //                           'assets/icons/buildings.svg',
                          //                           // ignore: deprecated_member_use
                          //                           color: Skymark.greyColor,
                          //                           height: 20,
                          //                           width: 20,
                          //                         ),
                          //                         commonWidth15,
                          //                         Text(
                          //                           'Sports Complex',
                          //                           style: GoogleFont
                          //                               .courcesDetailsColumnSecText,
                          //                         )
                          //                       ],
                          //                     ),
                          //                   ),
                          //                   commonWidth15,
                          //                   SizedBox(
                          //                     width: width / 2.74,
                          //                     height: 60,
                          //                     child: Row(
                          //                       children: [
                          //                         SvgPicture.asset(
                          //                           'assets/icons/buildings.svg',
                          //                           // ignore: deprecated_member_use
                          //                           color: Skymark.greyColor,
                          //                           height: 20,
                          //                           width: 20,
                          //                         ),
                          //                         commonWidth15,
                          //                         Text(
                          //                           'Sports Complex',
                          //                           style: GoogleFont
                          //                               .courcesDetailsColumnSecText,
                          //                         )
                          //                       ],
                          //                     ),
                          //                   ),
                          //                 ],
                          //               ),
                          //               const Divider(),
                          //               commonHeight5,
                          //             ],
                          //           )
                          //         : SizedBox(
                          //             width: width / 2.74,
                          //             height: 60,
                          //             child: Row(
                          //               children: [
                          //                 SvgPicture.asset(
                          //                   'assets/icons/buildings.svg',
                          //                   // ignore: deprecated_member_use
                          //                   color: Skymark.greyColor,
                          //                   height: 20,
                          //                   width: 20,
                          //                 ),
                          //                 commonWidth15,
                          //                 Text(
                          //                   'Sports Complex',
                          //                   style: GoogleFont
                          //                       .courcesDetailsColumnSecText,
                          //                 )
                          //               ],
                          //             ),
                          //           );
                          //   }),
                          // ),
                          // Text('University Rankings'),

                          FacilitiesListWidget(width: width),
                          commonHeight15,

                          Text(
                            'University Rankings',
                            style: GoogleFont.myAccountUserNameStyle,
                          ),

                          commonHeight15,

                          UniversityRankingWidget(width: width),

                          commonHeight15,

                          GestureDetector(
                              onTap: () {}, child: const BrochureButtonWidget())
                        ],
                      ),
                    )
                  ],
                ),
                commonHeight20,
                Container(
                  padding: const EdgeInsets.all(16),
                  width: double.infinity,
                  height: 141,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Skymark.whiteColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Info',
                        style: GoogleFont.myAccountUserNameStyle,
                      ),
                      commonHeight10,
                      ContactInfoWidget(
                          svgIcons: 'assets/icons/call-calling.svg',
                          textData: '+44 131 650 1000'),
                      commonHeight10,
                      ContactInfoWidget(
                          svgIcons: 'assets/icons/sms-edit.svg',
                          textData: 'supportteam@ed.ac.uk'),
                      commonHeight10,
                      ContactInfoWidget(
                          svgIcons: 'assets/icons/chrome.svg',
                          textData: 'www.ed.ac.uk'),
                    ],
                  ),
                ),
                commonHeight15,
                GestureDetector(
                    onTap: () {},
                    child: const CommonButtonLogin(
                        buttonText: 'View all Courses')),
                commonHeight15,
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class ContactInfoWidget extends StatelessWidget {
  const ContactInfoWidget({
    super.key,
    required this.svgIcons,
    required this.textData,
  });

  final String svgIcons;
  final String textData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          svgIcons,
          width: 16,
          height: 16,
        ),
        commonWidth10,
        Text(
          textData,
          style: GoogleFont.courcesDetailsColumnSecText,
        )
      ],
    );
  }
}

class BrochureButtonWidget extends StatelessWidget {
  const BrochureButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Skymark.whitef2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/document-text.svg'),
          commonWidth8,
          Text(
            'Download brochure',
            style: GoogleFont.myAccountScreenLogOutButtontext,
          )
        ],
      ),
    );
  }
}

class UniversityRankingWidget extends StatelessWidget {
  const UniversityRankingWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(5, (index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Skymark.whitef2),
                    child: Center(
                      child: Text(
                        '#$index',
                        style: GoogleFont.universityRankingsLeadingTextStyle,
                      ),
                    ),
                  ),
                  commonWidth10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'University Rankings',
                        style: GoogleFont.homeTileHeadTextStyle,
                      ),
                      SizedBox(
                        width: width > 359 ? width / 1.6 : 185,
                        child: Text(
                          'ARWU (Shanghai Ranking) 2022',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style:
                              GoogleFont.destinationDetailDiscriptionStyleBlack,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            index == 4 ? const SizedBox() : const Divider()
          ],
        );
      }),
    );
  }
}

class FacilitiesListWidget extends StatelessWidget {
  const FacilitiesListWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: (1 / .5), crossAxisCount: 2),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(12, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/icons/buildings.svg',
                // ignore: deprecated_member_use
                color: Colors.grey,
                height: 18,
                width: 18,
              ),
              commonWidth8,
              SizedBox(
                width: width > 321 ? 98 : 75,
                child: Text(
                  'Sports Complex',
                  style: GoogleFont.courcesDetailsColumnSecText,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class UnvercityDetailsListviewSecOne extends StatelessWidget {
  const UnvercityDetailsListviewSecOne({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: 5,
              height: 5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6), color: Colors.black),
            ),
            commonWidth20,
            SizedBox(
              width: width > 359 ? 235 : 190,
              child: Text(
                'Maecenas posuere magna nec commodo ullamcorper.',
                style: GoogleFont.destinationDetailDiscriptionStyleBlack,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}

double commonWidth(width) {
  if (width > 380) {
    return 230.0;
  } else if (width > 359) {
    return 200.0;
  } else {
    return 160;
  }
}

double responsiveHight(width) {
  if (width > 380) {
    return 121.0;
  } else if (width > 359) {
    return 130;
  } else {
    return 130;
  }
}
