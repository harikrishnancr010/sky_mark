import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skymark/core/colors/colors.dart';
import 'package:skymark/core/fonts/fonts.dart';
import 'package:skymark/core/size/size.dart';
import 'package:skymark/view/main_screens/home_screen/widgets/destination/destination_widget.dart';
import 'package:skymark/view/main_screens/home_screen/widgets/head_text_widget/head_text.dart';
import 'package:skymark/view/main_screens/home_screen/widgets/popular_univercity_widget/popular_univercity_widget.dart';
import 'package:skymark/view/main_screens/home_screen/widgets/trending_courses_widget/trending_courses_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 238,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22)),
                color: Skymark.secondaryColorBlue25),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 58),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Gary Torres',
                            style: GoogleFont.homeAppBarTextStyle,
                          ),
                          SizedBox(
                            width: width / 1.65,
                            child: Text(
                              'Many desktop publishing packages and web page editors.',
                              style: GoogleFont.homeTileSubTextStyle,
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 66,
                        height: 66,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 219, 219, 219),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')),
                            borderRadius: BorderRadius.circular(20)),
                      )
                    ],
                  ),
                ),
                commonHeight15,
                const SearchTileWidget(),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              HeadTextWidget(
                svgIcon: 'assets/icons/book.svg',
                headText: 'Trending Courses',
                onTapfunction: () {
                  log('on prsserd first');
                },
              ),
              const TendingCoursesWidget(),
              HeadTextWidget(
                svgIcon: 'assets/icons/buildings.svg',
                headText: 'Popular Universities',
                onTapfunction: () {
                  log('on prsserd second');
                },
              ),
              const Popularuniversites(),
              HeadTextWidget(
                svgIcon: 'assets/icons/buildings.svg',
                headText: 'Popular Universities',
                onTapfunction: () {
                  log('on prsserd 3rd');
                },
              ),
              const DestinationWidget(),
              commonHeight10,
            ],
          ))
        ],
      ),
    );
  }
}

class SearchTileWidget extends StatelessWidget {
  const SearchTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 18),
      child: Container(
        width: double.infinity,
        height: 58,
        decoration: BoxDecoration(
            color: const Color.fromARGB(30, 255, 255, 255),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Icon(
                  //   Icons.search,
                  //   color: Skymark.searchLabelColor,
                  // ),
                  SvgPicture.asset(
                    'assets/icons/search-normal.svg',
                    width: 18,
                    height: 18,
                  ),
                  commonWidth8,
                  Text(
                    'Search...',
                    style: GoogleFont.serarchLabelStyle,
                  ),
                ],
              ),
              Icon(
                Icons.filter_list,
                color: Skymark.whiteColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
