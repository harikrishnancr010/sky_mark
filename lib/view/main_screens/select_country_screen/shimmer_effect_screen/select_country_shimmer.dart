import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

// class SlectCountryShimmer extends StatelessWidget {
//   const SlectCountryShimmer({super.key});
//   final double heightRect = 20.0;
//   final double widthtRect = 60.0;
//   final radiusRect = 10.0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           AppBarCommonHome(isBackbutton: false, headText: 'Select Country'),
//           Expanded(
//               child: SlectCountryShimmerEffectListTile())
//         ],
//       ),
//     );
//   }
// }

class SlectCountryShimmerEffectListTile extends StatelessWidget {
  const SlectCountryShimmerEffectListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: List.generate(
          6,
          (index) => SizedBox(
                child: Shimmer.fromColors(
                    baseColor: Colors.grey[400]!,
                    highlightColor: Colors.grey[300]!,
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 16, left: 24, right: 24),
                      child: ListTile(
                        title: ShimmerContainer(
                            widthtRect: 50, heightRect: 18, radiusRect: 8),
                        subtitle: ShimmerContainer(
                            widthtRect: 150, heightRect: 15, radiusRect: 8),
                        trailing: CircleAvatar(
                          radius: 28,
                        ),
                      ),
                    )),
              )),
    );
  }
}

class ShimmerContainer extends StatelessWidget {
  const ShimmerContainer({
    super.key,
    required this.widthtRect,
    required this.heightRect,
    required this.radiusRect,
  });

  final double widthtRect;
  final double heightRect;
  final double radiusRect;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: widthtRect, bottom: 8),
      child: Container(
        width: double.infinity,
        height: heightRect,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(radiusRect)),
      ),
    );
  }
}

// class CircleListItem extends StatelessWidget {
//   const CircleListItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     _buildTopRowItem();
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
//       child: Container(
//         width: 54,
//         height: 54,
//         decoration: const BoxDecoration(
//           color: Colors.black,
//           shape: BoxShape.circle,
//         ),
//         child: ClipOval(
//           child: Image.network(
//             'https://flutter'
//             '.dev/docs/cookbook/img-files/effects/split-check/Avatar1.jpg',
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ShimmerLoading extends StatefulWidget {
//   const ShimmerLoading({
//     super.key,
//     required this.isLoading,
//     required this.child,
//   });

//   final bool isLoading;
//   final Widget child;

//   @override
//   State<ShimmerLoading> createState() => _ShimmerLoadingState();
// }

// class _ShimmerLoadingState extends State<ShimmerLoading> {
//   @override
//   Widget build(BuildContext context) {
//     if (!widget.isLoading) {
//       return widget.child;
//     }

//     return ShaderMask(
//       blendMode: BlendMode.srcATop,
//       shaderCallback: (bounds) {
//         return _shimmerGradient.createShader(bounds);
//       },
//       child: widget.child,
//     );
//   }
// }

// Widget _buildTopRowItem() {
//   return ShimmerLoading(
//     isLoading: true,
//     child: const CircleListItem(),
//   );
// }

// const _shimmerGradient = LinearGradient(
//   colors: [
//     Color(0xFFEBEBF4),
//     Color(0xFFF4F4F4),
//     Color(0xFFEBEBF4),
//   ],
//   stops: [
//     0.1,
//     0.3,
//     0.4,
//   ],
//   begin: Alignment(-1.0, -0.3),
//   end: Alignment(1.0, 0.3),
//   tileMode: TileMode.clamp,
// );
