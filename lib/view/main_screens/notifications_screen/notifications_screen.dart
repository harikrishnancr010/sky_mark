import 'package:flutter/material.dart';
import 'package:skymark/core/colors/colors.dart';
import 'package:skymark/core/fonts/fonts.dart';
import 'package:skymark/core/size/size.dart';
import 'package:skymark/view/main_screens/select_country_screen/select_country_screen.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final listLength = 4;
    // log(width.toString());
    return Scaffold(
        body: Column(
      children: [
        const AppBarCommonHome(isBackbutton: false, headText: 'Notifications'),
        Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 22,
                  right: 22,
                ),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Skymark.whiteColor,
                      borderRadius: BorderRadius.circular(15)),
                  width: double.infinity,
                  height: 90 * listLength + 16,
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(listLength, (index) {
                      // log(index.toString());
                      return Container(
                          width: double.infinity,
                          height: 90,
                          color: Skymark.whiteColor,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  // CircleAvatar(
                                  //   radius: 33,
                                  //   backgroundImage: NetworkImage(''),
                                  // ),
                                  Container(
                                    width: 55,
                                    height: 55,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://www.shutterstock.com/image-vector/university-logo-template-260nw-1331386988.jpg'),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  commonWidth10,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Welcome to Skymark',
                                        style: GoogleFont
                                            .notificationHeadTextStyle,
                                      ),
                                      SizedBox(
                                        //color:
                                        //Color.fromARGB(255, 255, 44, 7),
                                        width: width > 379
                                            ? (width / 1.71)
                                            : (width / 1.91),
                                        child: Text(
                                          'Many desktop ublishing packages.',
                                          style:
                                              GoogleFont.homeTileSubTextStyle,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                      ),
                                      Text(
                                        '10min ago',
                                        style: GoogleFont.homeTileSubTextStyle,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              index + 1 != listLength
                                  ? Divider(
                                      color: Skymark.whitef7,
                                      thickness: 1.2,
                                    )
                                  : const SizedBox()
                            ],
                          ));
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
