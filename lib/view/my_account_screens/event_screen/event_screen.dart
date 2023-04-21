import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skymark/core/colors/colors.dart';
import 'package:skymark/core/fonts/fonts.dart';
import 'package:skymark/core/size/size.dart';
import 'package:skymark/view/my_account_screens/event_screen/event_screen_open/event_screen_details.dart';

import '../../seondary_screens/cources_list_screen/cources_list_screen.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          const AppbarWithSearchBack(appBarHead: 'Upcoming events'),
          EventWidgetTile(width: width)
        ],
      ),
    );
  }
}

class EventWidgetTile extends StatelessWidget {
  const EventWidgetTile({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      physics: const BouncingScrollPhysics(),
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: () {
            Get.to(() => EventScreenDetails());
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: shadowCommon,
                color: Skymark.whiteColor,
              ),
              child: Row(
                children: [
                  Container(
                    width: 106,
                    height: 108,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://santamonicaedu.in/wp-content/uploads/2022/10/800-x-800-2.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  commonWidth8,
                  SizedBox(
                    width: width > 330 ? width / 1.99 : width / 2.3,
                    child: Text(
                      'Masters in Data Science in Canada is a 2 years program. It is available as a mainstream specialization of Masters in Computer Science, Big Data, or Mathematics Masters in Data Science in Canada is a 2 years program.',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                      style: GoogleFont.eventScreenTextStyleBlue,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    ));
  }
}
