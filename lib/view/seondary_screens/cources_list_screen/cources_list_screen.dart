import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skymark/core/colors/colors.dart';
import 'package:skymark/view/seondary_screens/cources_details/cources_details_screen.dart';
import 'package:skymark/view/seondary_screens/destination_details/destination_detailed_screen.dart';

import '../../../core/fonts/fonts.dart';
import '../../../core/size/size.dart';
import '../../main_screens/home_screen/home_screen.dart';

class CoursesListScreenBaseCata extends StatelessWidget {
  const CoursesListScreenBaseCata({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          const AppbarWithSearchBack(appBarHead: 'Management'),
          Expanded(
              child: ListView(
            physics: const BouncingScrollPhysics(),
            children: List.generate(
                10,
                (index) => GestureDetector(
                      onTap: () {
                        Get.to(() => CourcesDetailsScreen());
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 5),
                        child: Container(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          width: double.infinity,
                          height: 78,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Skymark.whiteColor,
                              boxShadow: shadowCommon),
                          child: Row(
                            children: [
                              Container(
                                width: 54,
                                height: 54,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://upload.wikimedia.org/wikipedia/en/8/80/This_is_the_logo_for_The_Open_University.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              commonWidth10,
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: width > 359 ? 200 : 160,
                                    child: Text(
                                      'MBA - Master of Business Administartion',
                                      style: GoogleFont
                                          .courseListScreenHeadTextStyle,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width > 359 ? 200 : 160,
                                    child: Text(
                                      'University of Oxford | USA',
                                      style: GoogleFont.homeTileSubTextStyle,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  RichText(
                                      textAlign: TextAlign.start,
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: 'Fee: ',
                                            style: GoogleFont
                                                .selectCountrySubText),
                                        TextSpan(
                                            text: 'USD 50,350',
                                            style: GoogleFont
                                                .cousesListCatSubTextBlack),
                                        TextSpan(
                                            text: '| Duration: ',
                                            style: GoogleFont
                                                .selectCountrySubText),
                                        TextSpan(
                                            text: '4 years',
                                            style: GoogleFont
                                                .cousesListCatSubTextBlack)
                                      ]))
                                ],
                              ),
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: Skymark.primaryColorBlue2E),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Skymark.primaryColorBlue2E,
                                    size: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
          ))
        ],
      ),
    );
  }
}

class AppbarWithSearchBack extends StatelessWidget {
  const AppbarWithSearchBack({
    super.key,
    required this.appBarHead,
  });

  final String appBarHead;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 186,
      decoration: BoxDecoration(
          color: Skymark.secondaryColorBlue25,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          commonHeight20,
          commonHeight20,
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BackArrowWhite(),
                Text(
                  appBarHead,
                  style: GoogleFont.homeAppBarTextStyle,
                ),
                const SizedBox(
                  width: 25,
                  height: 25,
                )
              ],
            ),
          ),
          const SearchTileWidget()
        ],
      ),
    );
  }
}
