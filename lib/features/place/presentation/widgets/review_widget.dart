import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neo_tour/core/app/io_ui.dart';
import 'package:neo_tour/features/place/presentation/bloc/place_bloc/place_bloc.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaceBloc, PlaceState>(builder: (context, state) {
      return state.when(
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        success: (reviews) => ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: reviews.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppProps.kTwentyMargin),
                          image: DecorationImage(
                              image: NetworkImage(reviews[index].userEntity!.image_url!), fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        reviews[index].userEntity!.username!,
                        style: AppTextStyle.s16w500Black,
                      )
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    reviews[index].comment!,
                    style: AppTextStyle.s16w400,
                  ),
                  const SizedBox(height: 24),
                ],
              );
            }),
        failure: () => const Center(
          child: Text('no'),
        ),
      );
    });
  }
}
