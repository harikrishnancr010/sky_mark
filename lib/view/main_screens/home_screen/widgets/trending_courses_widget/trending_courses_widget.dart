import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:skymark/core/colors/colors.dart';
import 'package:skymark/view/seondary_screens/cources_list_screen/cources_list_screen.dart';

import '../../../../../core/fonts/fonts.dart';
import '../../../../../core/size/size.dart';

class TendingCoursesWidget extends StatelessWidget {
  const TendingCoursesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 160,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: List.generate(
            5,
            (index) => GestureDetector(
                  onTap: () {
                    Get.to(() => CoursesListScreenBaseCata());
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12, right: 2, top: 4, bottom: 4),
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
                  ),
                )),
      ),
    );
  }
}
