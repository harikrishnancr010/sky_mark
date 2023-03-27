import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skymark/controller/filtter_screen_controller/filtter_screen_controller.dart';
import 'package:skymark/core/colors/colors.dart';
import 'package:skymark/core/fonts/fonts.dart';
import 'package:skymark/core/size/size.dart';
import 'package:skymark/dummy.dart';
import 'package:skymark/view/common_widgets/common_widgets.dart';
import 'package:skymark/view/login_screen/phone_number_screen/phone_number_screen.dart';
import 'package:skymark/view/main_screens/select_country_screen/select_country_screen.dart';

class FilterScreen extends StatelessWidget {
  FilterScreen({super.key});
  final labelText = 'Mini';
  final headText = 'Countries';

  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      body: Column(
        children: [
          const AppBarCommonHome(isBackbutton: true, headText: 'Filters'),
          Expanded(
              child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Container(
                  // padding: const EdgeInsets.all(24),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: shadowCommon,
                      color: Skymark.whiteColor),
                  child: Column(
                    children: [
                      //-------------------------------Countries------------------------------------------
                      FilterScreenCommonSelctionTile(
                        headText: headText,
                        listData: listData,
                        changedValue: (value) {
                          log(value);
                        },
                      ),
                      Divider(
                        color: Skymark.whitef7,
                        thickness: 1,
                      ),
                      commonHeight15,
                      //--------------------Cities------------------------------------------

                      FilterScreenCommonSelctionTile(
                        headText: 'Cities',
                        listData: listData2,
                        changedValue: (value) {
                          log(value);
                        },
                      ),
                      Divider(
                        color: Skymark.whitef7,
                        thickness: 1,
                      ),

                      //--------------------Fees Range------------------------------------------
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 24, right: 24, top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fees Range',
                              style: GoogleFont.homeHeadTextStyle,
                            ),
                            commonHeight15,
                            GetBuilder<FiltterScreenController>(
                                builder: (filterController) {
                              return Text(
                                '\$ ${filterController.miniValue} - \$ ${filterController.maxValues}',
                                style: GoogleFont.phonenUmberTextStyle,
                              );
                            }),
                            commonHeight10,
                            SizedBox(
                                width: double.infinity,
                                // color: Colors.amber,
                                child: FeesFiltterTileFilterScren()),
                            Row(
                              children: [
                                FiltterMinMaxTextFeild(
                                    width: width,
                                    labelText: 'Min.',
                                    textController: textController),
                                commonWidth10,
                                FiltterMinMaxTextFeild(
                                    width: width,
                                    labelText: 'Max.',
                                    textController: textController)
                              ],
                            )
                          ],
                        ),
                      ),

                      Divider(
                        color: Skymark.whitef7,
                        thickness: 1,
                      ),
                      //--------------------Study level------------------------------------------

                      FilterScreenCommonSelctionTile(
                        headText: 'Study level',
                        listData: listData3,
                        changedValue: (value) {
                          log(value);
                        },
                      ),
                      Divider(
                        color: Skymark.whitef7,
                        thickness: 1,
                      ),

                      //--------------------Mode of study------------------------------------------

                      FilterScreenCommonSelctionTile(
                        headText: 'Mode of study',
                        listData: listData4,
                        changedValue: (value) {
                          log(value);
                        },
                      ),
                      Divider(
                        color: Skymark.whitef7,
                        thickness: 1,
                      ),
                      //--------------------Subjects------------------------------------------

                      FilterScreenCommonSelctionTile(
                        headText: 'Subjects',
                        listData: listData5,
                        changedValue: (value) {
                          log(value);
                        },
                      ),
                      Divider(
                        color: Skymark.whitef7,
                        thickness: 1,
                      ),
                      //--------------------Language Requirements------------------------------------------

                      FilterScreenCommonSelctionTile(
                        headText: 'Language Requirements',
                        listData: listData6,
                        changedValue: (value) {
                          log(value);
                        },
                      ),
                      Divider(
                        color: Skymark.whitef7,
                        thickness: 1,
                      ),
                      //--------------------Intake year------------------------------------------

                      FilterScreenCommonSelctionTile(
                        headText: 'Intake year',
                        listData: listData7,
                        changedValue: (value) {
                          log(value);
                        },
                      ),
                      Divider(
                        color: Skymark.whitef7,
                        thickness: 1,
                      ),
                      //--------------------Intake Month------------------------------------------

                      FilterScreenCommonSelctionTile(
                        headText: 'Intake Month',
                        listData: listData8,
                        changedValue: (value) {
                          log(value);
                        },
                      ),
                      Divider(
                        color: Skymark.whitef7,
                        thickness: 1,
                      ),
                      //-----------------------------Course Duration-------------------------------

                      FilterScreenCommonSelctionTile(
                        headText: 'Course Duration',
                        listData: listData9,
                        changedValue: (value) {
                          log(value);
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24),
        child: GestureDetector(
            onTap: () {}, child: CommonButtonLogin(buttonText: 'Show Results')),
      ),
    );
  }
}

class FiltterMinMaxTextFeild extends StatelessWidget {
  const FiltterMinMaxTextFeild({
    super.key,
    required this.width,
    required this.labelText,
    required this.textController,
  });

  final double width;
  final String labelText;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width / 3,
      height: 70,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Skymark.lightGrey)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: GoogleFont.loginScreenSubTextStyle,
          ),
          commonHeight5,
          SizedBox(
            height: 30,
            child: TextField(
              controller: textController,
              style: GoogleFont.phonenUmberTextStyle,
              keyboardType: TextInputType.number,
              cursorColor: Skymark.primaryColorBlue2E,
              decoration: const InputDecoration(border: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }
}

class FilterScreenCommonSelctionTile extends StatelessWidget {
  const FilterScreenCommonSelctionTile(
      {super.key,
      required this.headText,
      required this.listData,
      required this.changedValue});

  final String headText;
  final List<String> listData;
  final ValueChanged changedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headText,
            style: GoogleFont.homeHeadTextStyle,
          ),
          commonHeight15,
          CustomChoiceChipForFilter(
            initialValue: listData[0],
            options: listData,
            onChanged: changedValue,
          ),
          commonHeight10,
        ],
      ),
    );
  }
}
