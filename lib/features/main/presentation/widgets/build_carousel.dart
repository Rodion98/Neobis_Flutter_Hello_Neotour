// ignore: must_be_immutable
import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neo_tour/core/app/io_ui.dart';
import 'package:neo_tour/core/app/router/router.dart';
import 'package:neo_tour/features/main/presentation/blocs/bloc_carousel/main_bloc.dart';

// ignore: must_be_immutable
class BuildCarousel extends StatefulWidget {
  BuildCarousel({
    super.key,
    required CarouselController controller,
    required int current,
  });

  late int _current = 0;

  @override
  State<BuildCarousel> createState() => _BuildCarouselState();
}

class _BuildCarouselState extends State<BuildCarousel> {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return state.when(
          failure: () => const Center(
            child: Text('No'),
          ),
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          success: (carousel) => (Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: carousel
                    .map((e) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: GestureDetector(
                            onTap: () {
                              AutoRouter.of(context).popAndPush(
                                PlaceRoute(tourEntity: e),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19.0),
                                image: DecorationImage(image: NetworkImage(e.image_url), fit: BoxFit.cover),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: AppColors.grey.withOpacity(0.5),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(19),
                                        bottomRight: Radius.circular(19),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child:
                                              Text(e.name, style: AppTextStyle.s20w600White, textAlign: TextAlign.left),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                    padEnds: false,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        widget._current = index;
                      });
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: carousel.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: widget._current == entry.key ? 23 : 7.0,
                      height: 7.0,
                      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 3.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          color: widget._current == entry.key ? AppColors.activeCarousel : AppColors.unActiveCarousel),
                    ),
                  );
                }).toList(),
              ),
            ],
          )),
        );
      },
    );
  }
}
