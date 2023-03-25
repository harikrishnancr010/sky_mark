import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skymark/core/colors/colors.dart';

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
