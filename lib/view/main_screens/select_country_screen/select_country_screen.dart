import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skymark/controller/select_country_screen_controller/select_country_screen_controller.dart';
import 'package:skymark/core/colors/colors.dart';
import 'package:skymark/core/fonts/fonts.dart';
import 'package:skymark/view/main_screens/select_country_screen/shimmer_effect_screen/select_country_shimmer.dart';
import 'package:skymark/view/seondary_screens/destination_details/destination_detailed_screen.dart';

class SelectCountryScreen extends StatelessWidget {
  SelectCountryScreen({super.key});
  final selctCountryControllerGet = Get.put(SelectCountryScreenController());
  @override
  Widget build(BuildContext context) {
    selctCountryControllerGet.isLoading();
    return Scaffold(
      body: Column(
        children: [
          AppBarCommonHome(isBackbutton: false, headText: 'Select Country'),
          GetBuilder<SelectCountryScreenController>(
              builder: (slectCountryController) {
            return Expanded(
                child: !slectCountryController.islading
                    ? ListView(
                        physics: const BouncingScrollPhysics(),
                        children: List.generate(5, (index) {
                          return GestureDetector(
                            onTap: () {
                              Get.to(() => DestinationDetailedScreem());
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 16, left: 24, right: 24),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Skymark.whiteColor,
                                ),
                                child: ListTile(
                                  title: Text(
                                    'United Kingdom',
                                    style: GoogleFont.selectCountryHeadText,
                                  ),
                                  subtitle: Text(
                                    '1200 University',
                                    style: GoogleFont.selectCountrySubText,
                                  ),
                                  trailing: const CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 22,
                                    backgroundImage: NetworkImage(
                                        'https://cdn.pixabay.com/photo/2015/11/06/13/29/union-jack-1027898__340.jpg'),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      )
                    : SlectCountryShimmerEffectListTile());
          })
        ],
      ),
    );
  }
}

class AppBarCommonHome extends StatelessWidget {
  const AppBarCommonHome({
    super.key,
    required this.isBackbutton,
    required this.headText,
  });

  final bool isBackbutton;
  final String headText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
          color: Skymark.secondaryColorBlue25,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
        child: isBackbutton
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonBackArrow(),
                  Text(
                    headText,
                    style: GoogleFont.homeAppBarTextStyle,
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent),
                  ),
                ],
              )
            : Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    headText,
                    style: GoogleFont.homeAppBarTextStyle,
                  ),
                ),
              ),
      ),
    );
  }
}

class CommonBackArrow extends StatelessWidget {
  const CommonBackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(30, 255, 255, 255)),
        child: Center(
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Skymark.blackColor,
            size: 18,
          ),
        ),
      ),
    );
  }
}
