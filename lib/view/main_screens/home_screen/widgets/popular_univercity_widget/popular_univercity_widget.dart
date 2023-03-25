import 'package:flutter/material.dart';
import 'package:skymark/core/colors/colors.dart';

import '../../../../../core/fonts/fonts.dart';
import '../../../../../core/size/size.dart';

class Popularuniversites extends StatelessWidget {
  const Popularuniversites({
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
                  child: Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                          boxShadow: shadowCommon,
                          color: Skymark.whiteColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 140,
                            height: 75,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 219, 219, 219),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://media.istockphoto.com/id/1221128440/vector/education-book-logo-vector-design.jpg?s=612x612&w=0&k=20&c=B3NwuLVhLonaOfrqNrYGqzbWK_Wxc2vrXpsz91h1j3o='),
                                    fit: BoxFit.cover)),
                          ),

                          commonHeight10,
                          Text(
                            'RMIT University',
                            style: GoogleFont.homeTileHeadTextStyle,
                          ),
                          Text(
                            '400+ Courses',
                            style: GoogleFont.homeTileSubTextStyle,
                          )
                          //'https://drive.google.com/file/d/1gfZFmnONsssZGWYcnnw5Q330CtzOKnou/view?usp=share_link'
                        ],
                      )),
                )),
      ),
    );
  }
}
