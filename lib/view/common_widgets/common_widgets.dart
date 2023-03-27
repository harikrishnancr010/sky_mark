import 'dart:developer';

import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skymark/controller/filtter_screen_controller/filtter_screen_controller.dart';
import 'package:skymark/core/colors/colors.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../core/fonts/fonts.dart';

class CustomChoiceChip extends StatefulWidget {
  final List<String> options;
  final ValueChanged<String> onChanged;
  final String initialValue;

  const CustomChoiceChip({
    Key? key,
    required this.options,
    required this.onChanged,
    this.initialValue = '',
  }) : super(key: key);

  @override
  _CustomChoiceChipState createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<CustomChoiceChip> {
  late String _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.options
          .map(
            (option) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 11),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: _selectedOption == option
                        ? Skymark.primaryColorBlue2E
                        : Skymark.whitef2),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectedOption = option;
                    });
                    widget.onChanged(option);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 8.0,
                    ),
                    child: Center(
                      child: Text(option,
                          style: _selectedOption == option
                              ? GoogleFont.choiceChipStylewhite
                              : GoogleFont.choiceChipStyleblue),
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class CustomChoiceChipForFilter extends StatefulWidget {
  final List<String> options;
  final ValueChanged<String> onChanged;
  final String initialValue;

  const CustomChoiceChipForFilter({
    Key? key,
    required this.options,
    required this.onChanged,
    this.initialValue = '',
  }) : super(key: key);

  @override
  _CustomChoiceChipForFilterState createState() =>
      _CustomChoiceChipForFilterState();
}

class _CustomChoiceChipForFilterState extends State<CustomChoiceChipForFilter> {
  late String _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Wrap(
        spacing: 8.0,
        children: widget.options
            .map(
              (option) => Padding(
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                child: Container(
                  height: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: _selectedOption == option
                        ? Skymark.whitef2
                        : Skymark.whiteColorLoginScreen,
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _selectedOption = option;
                      });
                      widget.onChanged(option);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: Text(option,
                          style: _selectedOption == option
                              ? GoogleFont.filterScrenChoicechipTextStyleblue2e
                              : GoogleFont.filterScrenChoicechipTextStyleGrey

                          // TextStyle(
                          //   color: _selectedOption == option
                          //       ? Colors.white
                          //       : Colors.black,
                          // ),
                          ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class FeesFiltterTileFilterScren extends StatelessWidget {
  FeesFiltterTileFilterScren({super.key});
  final filterMainController = Get.put(FiltterScreenController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FiltterScreenController>(builder: (filterController) {
      return SfRangeSlider(
        endThumbIcon: CircleAvatar(
          radius: 3,
          backgroundColor: Skymark.greenColor,
        ),
        startThumbIcon: CircleAvatar(
          radius: 3,
          backgroundColor: Skymark.greenColor,
        ),
        activeColor: Skymark.greenColor,
        inactiveColor: Skymark.lightGrey,
        min: 0,
        max: 140000,
        values: filterController.values,
        interval: 1000,
        numberFormat: NumberFormat('\$'),
        showTicks: false,
        showLabels: false,
        enableTooltip: false,
        onChangeStart: (value) {
          final val = value.start.toInt();
          log(val.toString());
        },
        onChangeEnd: (value) {
          // log(value.toString());
        },
        onChanged: (SfRangeValues values) {
          int miniVal = values.start.toInt();
          int maxVal = values.end.toInt();
          log(miniVal.toString());
          filterMainController.onAountValueChanges(
              miniValue: miniVal, maxVale: maxVal);
          // log(values.start.toString());
          filterMainController.onValueChanges(values: values);
        },
      );
    });
  }
}
// class TextWidgetScreen extends StatefulWidget {
//   TextWidgetScreen({super.key});

//   @override
//   State<TextWidgetScreen> createState() => _TextWidgetScreenState();
// }

// class _TextWidgetScreenState extends State<TextWidgetScreen> {
//   SfRangeValues _values = SfRangeValues(40.0, 80.0);

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }

// class CustomChoiceChipForFilter extends StatefulWidget {
//   final List<String> options;
//   final ValueChanged<String> onChanged;
//   final String initialValue;

//   const CustomChoiceChipForFilter({
//     Key? key,
//     required this.options,
//     required this.onChanged,
//     this.initialValue = '',
//   }) : super(key: key);

//   @override
//   _CustomChoiceChipForFilterState createState() =>
//       _CustomChoiceChipForFilterState();
// }

// class _CustomChoiceChipForFilterState extends State<CustomChoiceChipForFilter> {
//   late String _selectedOption;

//   @override
//   void initState() {
//     super.initState();
//     _selectedOption = widget.initialValue;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Wrap(
//           spacing: 8,
//           children: widget.options
//               .map(
//                 (option) => Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 5, vertical: 11),
//                   child: Container(
//                     height: 60,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(8),
//                         color: _selectedOption == option
//                             ? Skymark.primaryColorBlue2E
//                             : Skymark.whitef2),
//                     child: InkWell(
//                       onTap: () {
//                         setState(() {
//                           _selectedOption = option;
//                         });
//                         widget.onChanged(option);
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 12.0,
//                           vertical: 8.0,
//                         ),
//                         child: Center(
//                           child: Text(option,
//                               style: _selectedOption == option
//                                   ? GoogleFont.choiceChipStylewhite
//                                   : GoogleFont.choiceChipStyleblue),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               )
//               .toList(),
//         ),
//       ],
//     );
//   }
// }
