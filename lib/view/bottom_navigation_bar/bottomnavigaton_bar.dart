import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:skymark/controller/bottom_navigation_controller/bottom_navigation_controller.dart';
import 'package:skymark/view/main_screens/home_screen/home_screen.dart';
import 'package:skymark/view/main_screens/my_account_screen/my_account_screen.dart';
import 'package:skymark/view/main_screens/notifications_screen/notifications_screen.dart';
import 'package:skymark/view/main_screens/select_country_screen/select_country_screen.dart';

import '../main_screens/select_courses_screen/select_courses_screen.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  BottomNavigationBarScreen({super.key});

  final navController = Get.put(BottomNavigationController());

  final List<Widget> data = [
    HomeScreen(),
    SelectASelectCoursesScreen(),
    SelectCountryScreen(),
    NotificationsScreen(),
    MyAccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Obx(() {
        return data[navController.currentIndex.value];
      }),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: Obx(() {
          return Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.transparent,
                elevation: 0,
                currentIndex: navController.currentIndex.value,
                onTap: (value) {
                  navController.onNavChanged(value);
                },
                items: [
                  BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(
                        'assets/icons/home-active.svg',
                      ),
                      icon: SvgPicture.asset(
                        'assets/icons/home-not-active.svg',
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(
                        'assets/icons/book-active.svg',
                      ),
                      icon: SvgPicture.asset(
                        'assets/icons/book-bottombar.svg',
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(
                        'assets/icons/buildings-active.svg',
                      ),
                      icon: SvgPicture.asset(
                        'assets/icons/buildings-bottombar.svg',
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(
                        'assets/icons/notification-circle-active.svg',
                      ),
                      icon: SvgPicture.asset(
                        'assets/icons/notification-circle.svg',
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(
                        'assets/icons/profile-circle-active.svg',
                      ),
                      icon: SvgPicture.asset(
                        'assets/icons/profile-circle.svg',
                      ),
                      label: ''),
                ]),
          );
        }),
      ),
    );
  }
}
