import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skymark/core/colors/colors.dart';

class SwiperWidget extends StatelessWidget {
  const SwiperWidget(
      {Key? key, required this.swiperHeight, required this.imageList})
      : super(key: key);

  final double swiperHeight;
  final List<String> imageList;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(boxShadow: shadowCommon),
        width: double.infinity,
        height: swiperHeight,
        child: Swiper(
          loop: false,
          itemBuilder: (BuildContext context, int index) {
            return Image(
              image: NetworkImage(imageList[index]),
              fit: BoxFit.cover,
            );
          },
          autoplay: false,
          pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                  activeColor: Skymark.whiteColor,
                  color: const Color.fromARGB(111, 255, 255, 255))),
          itemCount: imageList.length,
          itemWidth: 300.0,
          itemHeight: 400.0,
        ));
  }
}
