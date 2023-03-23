import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skymark/view/core/colors/colors.dart';
import 'package:skymark/view/core/fonts/fonts.dart';
import 'package:skymark/view/core/size/size.dart';

class HeadTextWidget extends StatelessWidget {
  const HeadTextWidget({
    super.key,
    required this.svgIcon,
    required this.headText,
    required this.onTapfunction,
  });

  final String svgIcon;
  final String headText;
  final VoidCallback onTapfunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(svgIcon),
              commonWidth10,
              Text(
                headText,
                style: GoogleFont.homeHeadTextStyle,
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: onTapfunction,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Skymark.primaryColorBlue2E,
                  size: 20,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
