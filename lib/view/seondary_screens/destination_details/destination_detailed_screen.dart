import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skymark/view/core/colors/colors.dart';
import 'package:skymark/view/core/fonts/fonts.dart';
import 'package:skymark/view/core/size/size.dart';
import 'package:skymark/view/login_screen/phone_number_screen/phone_number_screen.dart';

class DestinationDetailedScreem extends StatelessWidget {
  const DestinationDetailedScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(
        children: [
          Container(
            height: 290,
            child: Stack(
              children: [
                Image.network(
                  width: double.infinity,
                  height: 238,
                  'https://images.pexels.com/photos/460672/pexels-photo-460672.jpeg?cs=srgb&dl=pexels-pixabay-460672.jpg&fm=jpg',
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  top: 45,
                  left: 16,
                  child: BackArrowWhite(),
                ),
                Positioned(
                    top: 190,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Center(
                          child: Container(
                        width: double.infinity,
                        height: 95,
                        decoration: BoxDecoration(
                            color: Skymark.whiteColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                blurRadius: 6,
                                spreadRadius: 4,
                              ),
                            ]),

                        child: Row(
                          children: [
                            commonWidth15,
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://media.istockphoto.com/id/1181025257/photo/united-kingdom-flag.jpg?b=1&s=170667a&w=0&k=20&c=OVKUajIaOzJLP4of3ts3DXqiUOrTERCKSBp9JwFsJCs='),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.amber),
                            ),
                            commonWidth15,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'United Kingdom',
                                  style: GoogleFont
                                      .destinationDetailsHeadTextStyle,
                                ),
                                Text(
                                  'London',
                                  style: GoogleFont.loginScreenSubTextStyle,
                                )
                              ],
                            )
                          ],
                        ),
                        // color: Colors.amber,
                      )),
                    )),
              ],
            ),
          ),
          Expanded(
            child: ListView(physics: const BouncingScrollPhysics(), children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  width: double.infinity,
                  height: 228,
                  decoration: BoxDecoration(
                      color: Skymark.whiteColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SubHeadTile(titleText: 'Language', subText: 'English'),
                      Divider(
                        thickness: 1,
                        color: Skymark.whitef7,
                      ),
                      SubHeadTile(titleText: 'Currency', subText: '£ Pound'),
                      Divider(
                        color: Skymark.whitef7,
                      ),
                      SubHeadTile(
                          titleText: 'Population', subText: '6.73 crores'),
                      Divider(
                        color: Skymark.whitef7,
                      ),
                      SubHeadTile(
                          titleText: 'Count of university', subText: '160'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Card(
                  elevation: 0,
                  color: Skymark.whiteColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        commonHeight8,
                        Text(
                          'Overview',
                          style: GoogleFont.myAccountUserNameStyle,
                        ),
                        commonHeight15,
                        Text(
                          '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.
                  It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. 
                  Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). ''',
                          style:
                              GoogleFont.destinationDetailDiscriptionStyleBlack,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: CommonButtonLogin(buttonText: 'View all University'),
      ),
    );
  }
}

class SubHeadTile extends StatelessWidget {
  const SubHeadTile({
    super.key,
    required this.titleText,
    required this.subText,
  });

  final String titleText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleText,
            style: GoogleFont.destinationDetailSubTextStyleBlack,
          ),
          Text(
            subText,
            style: GoogleFont.destinationDetailSubTextStyleGrey,
          ),
        ],
      ),
    );
  }
}

class BackArrowWhite extends StatelessWidget {
  const BackArrowWhite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(80, 255, 255, 255)),
        child: const Center(
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
            size: 22,
          ),
        ),
      ),
    );
  }
}
