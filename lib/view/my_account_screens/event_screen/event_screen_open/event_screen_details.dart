import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:skymark/core/size/size.dart';
import 'package:skymark/view/seondary_screens/destination_details/destination_detailed_screen.dart';

// MediaQuery.removePadding(
//   context: context,
//   removeTop: true,
//   child: ,
// ),
class EventScreenDetails extends StatelessWidget {
  const EventScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              // shrinkWrap: true,
              // physics: BouncingScrollPhysics(),
              // padding: EdgeInsets.zero,
              children: [
                Container(
                  width: double.infinity,
                  height: height / 2.2,
                  color: Colors.amber,
                ),
                commonHeight20,
                Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: Text(
                      'Masters in Data Science in \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nCanada is a 2 years program. It is available as a mainstream specialization of Masters in Computer Science, Big Data, or Mathematics. '),
                )
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackArrowWhite(),
                  Container(
                    width: 80,
                    height: 20,
                    color: Colors.deepOrange,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



// SingleChildScrollView(
//       physics: BouncingScrollPhysics(),
//       child: Column(
//         // shrinkWrap: true,
//         // physics: BouncingScrollPhysics(),
//         // padding: EdgeInsets.zero,
//         children: [
//           Stack(
//             children: [
//               Container(
//                 width: double.infinity,
//                 height: height / 2.2,
//                 color: Colors.amber,
//               ),
//               SafeArea(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 5),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       BackArrowWhite(),
//                       Container(
//                         width: 80,
//                         height: 20,
//                         color: Colors.deepOrange,
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//           commonHeight20,
//           Container(
//             width: double.infinity,
//             color: Colors.red,
//             child: Text(
//                 'Masters in Data Science in \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nCanada is a 2 years program. It is available as a mainstream specialization of Masters in Computer Science, Big Data, or Mathematics. '),
//           )
//         ],
//       ),
//     )