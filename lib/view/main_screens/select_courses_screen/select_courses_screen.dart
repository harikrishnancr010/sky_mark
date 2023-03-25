import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:skymark/core/colors/colors.dart';
import 'package:skymark/core/fonts/fonts.dart';
import 'package:skymark/core/size/size.dart';
import 'package:skymark/view/main_screens/home_screen/home_screen.dart';
import 'package:skymark/view/seondary_screens/cources_list_screen/cources_list_screen.dart';

class SelectASelectCoursesScreen extends StatelessWidget {
  const SelectASelectCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
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
                Text(
                  'Select a courses',
                  style: GoogleFont.homeAppBarTextStyle,
                ),
                const SearchTileWidget()
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.count(
              physics: const BouncingScrollPhysics(),
              crossAxisCount: 2,
              children: List.generate(8, (index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(() => CoursesListScreenBaseCata());
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8, bottom: 16, right: 8),
                    child: Container(
                        width: 140,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Skymark.whiteColor,
                            boxShadow: shadowCommon,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/management 1.svg',
                              width: 65,
                              height: 65,
                            ),
                            commonHeight10,
                            Text(
                              'Management',
                              style: GoogleFont.homeTileHeadTextStyle,
                            ),
                          ],
                        )),

                    // Container(
                    //   width: 165,
                    //   height: 165,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20),
                    //       color: Skymark.whiteColor),
                    //       child: Column(
                    //         children: [],
                    //       ),
                    // ),
                  ),
                );
              }),
            ),
          ))
        ],
      ),
    );
  }
}
