import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skymark/view/core/colors/colors.dart';

import '../../../core/fonts/fonts.dart';
import '../../../core/size/size.dart';

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
            (index) => Padding(
                  padding: const EdgeInsets.only(
                      left: 12, right: 2, top: 4, bottom: 4),
                  child: Container(
                      width: 140,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Skymark.whiteColor,
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
                )),
      ),
    );
  }
}
