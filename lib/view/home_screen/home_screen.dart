import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:skymark/view/core/colors/colors.dart';
import 'package:skymark/view/core/fonts/fonts.dart';
import 'package:skymark/view/core/size/size.dart';
import 'package:skymark/view/home_screen/widgets/destination/destination_widget.dart';
import 'package:skymark/view/home_screen/widgets/head_text_widget/head_text.dart';
import 'package:skymark/view/home_screen/widgets/popular_univercity_widget/popular_univercity_widget.dart';
import 'package:skymark/view/home_screen/widgets/trending_courses_widget/trending_courses_widget.dart';

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
                          Container(
                            width: width / 1.65,
                            child: Text(
                              'Many desktop publishing packages and web page editors.',
                              style: GoogleFont.homeTileSubTextStyle,
                            ),
                          )
                        ],
                      ),
                      Shimmer(
                          enabled: false,
                          direction: ShimmerDirection.fromLTRB(),
                          child: Container(
                            width: 66,
                            height: 66,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 219, 219, 219),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')),
                                borderRadius: BorderRadius.circular(20)),
                          ))
                    ],
                  ),
                ),
                commonHeight8,
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Container(
                    width: double.infinity,
                    height: 58,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(30, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        commonWidth15,
                        Icon(
                          Icons.search,
                          color: Skymark.searchLabelColor,
                        ),
                        commonWidth8,
                        Text(
                          'Search...',
                          style: GoogleFont.serarchLabelStyle,
                        )
                      ],
                    ),
                  ),
                ),
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
