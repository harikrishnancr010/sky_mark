import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skymark/controller/cources_details_controller/cources_details_controller.dart';
import 'package:skymark/view/common_widgets/common_widgets.dart';
import 'package:skymark/view/login_screen/phone_number_screen/phone_number_screen.dart';
import '../../../model/sample_model.dart';
import '../../../core/colors/colors.dart';
import '../../../core/fonts/fonts.dart';
import '../../../core/size/size.dart';
import '../destination_details/destination_detailed_screen.dart';

final List<SupportigDoc> documentList = [
  SupportigDoc(
      headText: 'PDF, .jpg or .png format.',
      subText:
          'The point of using Lorem Ipsum is that it has a more or less normal distribution of letters, as opposed to using.'),
  SupportigDoc(
      headText: 'Smaller than 4MB',
      subText:
          'The point of using Lorem Ipsum is that it has a more or less normal distribution of letters, as opposed to using.'),
  SupportigDoc(
      headText:
          'Written in English, unless otherwise permitted by the department.',
      subText:
          'The point of using Lorem Ipsum is that it has a more or less normal distribution of letters, as opposed to using.'),
  SupportigDoc(
      headText: 'Entirely your own work, except where clearly indicated',
      subText:
          'The point of using Lorem Ipsum is that it has a more or less normal distribution of letters, as opposed to using.'),
  SupportigDoc(
      headText: 'Legible and easy to identify',
      subText:
          'The point of using Lorem Ipsum is that it has a more or less normal distribution of letters, as opposed to using.')
];

class CourcesDetailsScreen extends StatelessWidget {
  CourcesDetailsScreen({super.key});

  final CourcesDetailsScreenControler = Get.put(CourcesDetailController());
  final List<Widget> isSelctedData = [
    CourseDetailsTile(),
    DocumentsTile(),
    UniversityDetailTile()
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 287,
            child: Stack(
              children: [
                Image.network(
                  width: double.infinity,
                  height: 238,
                  'https://images.unsplash.com/photo-1605470207062-b72b5cbe2a87?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
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
                                // color: Skymark.shadowColor,
                                blurRadius: 15,
                                spreadRadius: 0,
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
                                          'https://upload.wikimedia.org/wikipedia/en/8/80/This_is_the_logo_for_The_Open_University.jpg'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.transparent),
                            ),
                            commonWidth15,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: width > 359 ? 230 : 190,
                                  child: Text(
                                    'MBA - Master of Business Administration',
                                    style: GoogleFont
                                        .destinationDetailsHeadTextStyle,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(
                                  width: width > 359 ? 230 : 190,
                                  child: Text(
                                    'University of Edinburgh | UK',
                                    style: GoogleFont.loginScreenSubTextStyle,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                    )),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  width: double.infinity,
                  height: 365,
                  decoration: BoxDecoration(
                      color: Skymark.whiteColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SubHeadTile(
                          titleText: 'Tuition fees', subText: 'INR 63,46,880'),
                      Divider(
                        thickness: 1,
                        color: Skymark.whitef7,
                      ),
                      SubHeadTile(
                          titleText: 'Duration',
                          subText: '12 months (Full Time)'),
                      Divider(
                        color: Skymark.whitef7,
                      ),
                      SubHeadTile(
                          titleText: 'Course Level', subText: 'PG Degree'),
                      Divider(
                        color: Skymark.whitef7,
                      ),
                      SubHeadTile(
                          titleText: 'Type of University', subText: 'Public'),
                      Divider(
                        thickness: 1,
                        color: Skymark.whitef7,
                      ),
                      SubHeadTile(
                          titleText: 'Course eligibility',
                          subText: 'Graduation'),
                      Divider(
                        color: Skymark.whitef7,
                      ),
                      Divider(
                        thickness: 1,
                        color: Skymark.whitef7,
                      ),
                      SubHeadTile(titleText: 'Entrance', subText: 'Required'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 8, right: 8),
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Skymark.whiteColor,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        children: List.generate(1, (index) {
                          return CustomChoiceChip(
                            initialValue: 'Course details',
                            options: [
                              'Course details',
                              'Documents',
                              'University Details'
                            ],
                            onChanged: (value) {
                              if (value == 'Course details') {
                                CourcesDetailsScreenControler
                                    .onCurrentFeildChanges(index: 0);
                              } else if (value == 'Documents') {
                                CourcesDetailsScreenControler
                                    .onCurrentFeildChanges(index: 1);
                              } else if (value == 'University Details') {
                                CourcesDetailsScreenControler
                                    .onCurrentFeildChanges(index: 2);
                              }
                            },
                          );
                        }),
                      ),
                    ),
                    Obx(() {
                      return isSelctedData[CourcesDetailsScreenControler
                          .currentIndexFeild.value];
                    }),
                    commonHeight20,
                    CommonButtonLogin(buttonText: 'Get Admission')
                  ],
                ),
              ),

              //  CustomChoiceChip(
              //   options: ['Course details', 'Documents', 'University Detail'],
              //   onChanged: (value) {},
              // )
            ],
          )),
        ],
      ),
    );
  }
}

class CourseDetailsTile extends StatelessWidget {
  const CourseDetailsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 24),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Skymark.whiteColor,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Course details',
              style: GoogleFont.destinationDetailsHeadTextStyle,
            ),
            commonHeight15,
            Text(
              '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).''',
              style: GoogleFont.destinationDetailDiscriptionStyleBlack,
            ),
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(
                  5,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: Row(
                            children: [
                              Container(
                                width: 5,
                                height: 5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.black),
                              ),
                              commonWidth20,
                              SizedBox(
                                width: width > 359 ? 235 : 190,
                                child: const Text(
                                  'Maecenas posuere magna nec commodo ullamcorper.',
                                  maxLines: 2,
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
            ),
            //Documents ---------------------------- sec
            commonHeight10,
            DocumentSection(),
            UniversityDetailsSection()
          ],
        ));
  }
}

class UniversityDetailsSection extends StatelessWidget {
  const UniversityDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'University Details',
          style: GoogleFont.destinationDetailsHeadTextStyle,
        ),
        commonHeight8,
        Container(
          width: 185,
          height: 24,
          decoration: BoxDecoration(
              color: Skymark.whitef7, borderRadius: BorderRadius.circular(6)),
          child: Row(
            children: [
              commonWidth5,
              const Icon(
                Icons.star_rounded,
                color: Colors.amber,
              ),
              commonWidth5,
              Text(
                '4.9 Star rating 3,584 Reviews',
                style: GoogleFont.ratilngTileTextStyle,
              )
            ],
          ),
        ),
        commonHeight15,
        Text(
          '''There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.
All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.''',
          style: GoogleFont.destinationDetailDiscriptionStyleBlack,
        ),
        commonHeight15,
        Text(
          'Admission',
          style: GoogleFont.courcesDetailsSubTextBlue,
        ),
        commonHeight8,
        Text(
          'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.',
          style: GoogleFont.destinationDetailDiscriptionStyleBlack,
        ),
        commonHeight15,
        Text(
          'General',
          style: GoogleFont.courcesDetailsSubTextBlue,
        ),
        GeneralSubTilesWidget(
            generalHead: 'GMAT', generalTail: '550+', isFirst: true),
        GeneralSubTilesWidget(
            generalHead: 'GPA', generalTail: '2+', isFirst: false),
        GeneralSubTilesWidget(
            generalHead: 'IELTS', generalTail: '30+', isFirst: false),
        GeneralSubTilesWidget(
            generalHead: 'TOEFL', generalTail: '120+', isFirst: false),
        Text(
          'Bachelor',
          style: GoogleFont.courcesDetailsSubTextBlue,
        ),
        GeneralSubTilesWidget(
            generalHead: 'SAT', generalTail: '550+', isFirst: true),
        GeneralSubTilesWidget(
            generalHead: 'ATAR', generalTail: '2+', isFirst: false),
        GeneralSubTilesWidget(
            generalHead: 'IELTS', generalTail: '30+', isFirst: false),
        GeneralSubTilesWidget(
          generalHead: 'TOEFL',
          generalTail: '120+',
          isFirst: false,
          isLast: true,
        ),
      ],
    );
  }
}

class GeneralSubTilesWidget extends StatelessWidget {
  GeneralSubTilesWidget(
      {super.key,
      required this.generalHead,
      required this.generalTail,
      required this.isFirst,
      this.isLast = false});

  final String generalHead;
  final String generalTail;
  final bool isFirst;
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isFirst ? Divider() : SizedBox(),
        commonHeight3,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              generalHead,
              style: GoogleFont.courcesDetailsColumnSecText,
            ),
            Text(
              generalTail,
              style: GoogleFont.courcesDetailsColumnSecTextgreyColor,
            )
          ],
        ),
        commonHeight3,
        isLast ? const SizedBox() : const Divider()
      ],
    );
  }
}

class DocumentSection extends StatelessWidget {
  const DocumentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Documents',
          style: GoogleFont.destinationDetailsHeadTextStyle,
        ),
        commonHeight15,
        Text(
          '''The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.
Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).''',
          style: GoogleFont.destinationDetailDiscriptionStyleBlack,
        ),
        commonHeight20,
        Text(
          'All of your supporting documents should meet the following requirements:',
          style: GoogleFont.destinationDetailsHeadTextStyle,
        ),
        commonHeight15,
        ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: List.generate(documentList.length, (index) {
            final headText = documentList[index].headText;
            final subText = documentList[index].subText;
            return SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  commonHeight10,
                  Text(
                    headText,
                    style: GoogleFont.documentHeadTextStyle,
                  ),
                  commonHeight10,
                  Text(
                    subText,
                    style: GoogleFont.destinationDetailDiscriptionStyleBlack,
                  )
                ],
              ),
            );
          }),
        ),
      ],
    );
  }
}

class DocumentsTile extends StatelessWidget {
  const DocumentsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 24),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Skymark.whiteColor,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: DocumentSection(),
    );
  }
}

class UniversityDetailTile extends StatelessWidget {
  const UniversityDetailTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 24),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Skymark.whiteColor,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: UniversityDetailsSection());
  }
}
