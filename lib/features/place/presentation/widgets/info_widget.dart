import 'package:flutter/material.dart';
import 'package:neo_tour/core/app/io_ui.dart';
import 'package:neo_tour/features/place/presentation/place_screen.dart';
import 'package:neo_tour/features/place/presentation/widgets/review_widget.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
    required this.widget,
  });

  final PlaceScreen widget;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height / 1.7,
        decoration: BoxDecoration(
          color: AppColors.whiteText,
          borderRadius: BorderRadius.circular(36),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40, top: 24, left: 16, right: 14),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                widget.tourEntity.name!,
                style: AppTextStyle.s24w900,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Text(widget.tourEntity.country!, style: AppTextStyle.s12w500),
                ],
              ),
              const SizedBox(height: 32),
              const Text(
                'Description',
                style: AppTextStyle.s20w600Black,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 32, top: 12),
                child: Text(
                  widget.tourEntity.description!,
                  style: AppTextStyle.s16w400,
                ),
              ),
              const Text(
                "Reviews",
                style: AppTextStyle.s20w600Black,
              ),
              const ReviewWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 9,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
