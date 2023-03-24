import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:skymark/view/core/colors/colors.dart';
import 'package:skymark/view/seondary_screens/destination_details/destination_detailed_screen.dart';

import '../../../../core/fonts/fonts.dart';
import '../../../../core/size/size.dart';

class DestinationWidget extends StatelessWidget {
  const DestinationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 180,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: List.generate(
            5,
            (index) => Padding(
                  padding: const EdgeInsets.only(
                      left: 12, right: 2, top: 4, bottom: 4),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => DestinationDetailedScreem());
                    },
                    child: Container(
                        width: 140,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Skymark.whiteColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Shimmer(
                              enabled: false,
                              child: Container(
                                width: 140,
                                height: 100,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    color: Color.fromARGB(255, 219, 219, 219),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://s3-us-west-1.amazonaws.com/contentlab.studiod/getty/f24ff79aab634eab81550bb65ff21ebe'),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            commonHeight10,
                            Text(
                              'United States',
                              style: GoogleFont.homeTileHeadTextStyle,
                            ),
                            Text(
                              '93 Universities',
                              style: GoogleFont.homeTileSubTextStyle,
                            )
                            //'https://drive.google.com/file/d/1gfZFmnONsssZGWYcnnw5Q330CtzOKnou/view?usp=share_link'
                          ],
                        )),
                  ),
                )),
      ),
    );
  }
}
