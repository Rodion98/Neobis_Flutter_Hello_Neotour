import "package:flutter/material.dart";
import "package:neo_tour/core/app/io_ui.dart";
import 'package:flutter_svg/flutter_svg.dart';
import "package:neo_tour/features/place/presentation/review_widget.dart";
import "package:neo_tour/gen/assets.gen.dart";

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          // top: MediaQuery.of(context).size.height * 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: const BoxDecoration(color: AppColors.activeCarousel),
          ),
        ),
        Positioned.fill(
          // bottom: MediaQuery.of(context).size.height * 0.1,
          top: MediaQuery.of(context).size.height * 0.4,
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: const BoxDecoration(
                color: AppColors.whiteText,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36),
                  topRight: Radius.circular(36),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 40, top: 24, left: 16, right: 14),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Mount Fuji',
                    style: AppTextStyle.s24w900,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text('Honshu, Japan', style: AppTextStyle.s12w500),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Description',
                    style: AppTextStyle.s20w600Black,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 32, top: 12),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.',
                      style: AppTextStyle.s16w400,
                    ),
                  ),
                  Text(
                    "Reviews",
                    style: AppTextStyle.s20w600Black,
                  ),
                  // ReviewCard(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 14),
                    child: Container(
                      child: Center(child: Text('Book Now', style: AppTextStyle.s18w500Whitr)),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration:
                          BoxDecoration(color: AppColors.activeCarousel, borderRadius: BorderRadius.circular(28)),
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
