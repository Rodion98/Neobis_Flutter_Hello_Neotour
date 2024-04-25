import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neo_tour/core/app/io_ui.dart';
import 'package:neo_tour/core/app/router/router.dart';
import 'package:neo_tour/features/main/presentation/blocs/bloc_carousel/main_bloc.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({
    super.key,
  });

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  late int _current = 0;

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
          success: (carousel, category, i) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: carousel
                    .map((e) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin),
                          child: GestureDetector(
                            onTap: () {
                              AutoRouter.of(context).popAndPush(
                                PlaceRoute(tourEntity: e),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(AppProps.kTwentyMargin),
                                image: DecorationImage(image: NetworkImage(e.image_url!), fit: BoxFit.cover),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: AppColors.grey.withOpacity(0.5),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(AppProps.kTwentyMargin),
                                        bottomRight: Radius.circular(AppProps.kTwentyMargin),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(AppProps.kPageMargin),
                                          child: Text(e.name!,
                                              style: AppTextStyle.s20w600White, textAlign: TextAlign.left),
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
                        _current = index;
                      });
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: carousel.asMap().entries.map((entry) {
                  return Container(
                    width: _current == entry.key ? 23 : 7.0,
                    height: 7.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: AppProps.kSmallMargin, horizontal: AppProps.kSmallMarginX2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                        color: _current == entry.key ? AppColors.activeCarousel : AppColors.unActiveCarousel),
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
