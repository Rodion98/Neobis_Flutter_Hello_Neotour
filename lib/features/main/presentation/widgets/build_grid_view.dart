import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neo_tour/core/app/io_ui.dart';
import 'package:neo_tour/core/app/router/router.dart';
import 'package:neo_tour/features/main/presentation/blocs/bloc_grid_view/grid_view_bloc.dart';

class BuilGridView extends StatelessWidget {
  const BuilGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GridViewBloc, GridViewState>(
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
          success: (grid) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: AppProps.kMediumMargin, crossAxisSpacing: AppProps.kMediumMargin),
              itemCount: grid.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).popAndPush(
                      PlaceRoute(tourEntity: grid[index]),
                    );
                  },
                  child: Container(
                    height: 185,
                    width: 185,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(grid[index].image_url!), fit: BoxFit.cover),
                      color: Colors.black,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: AppProps.kMediumMargin),
                          alignment: Alignment.centerLeft,
                          height: 41,
                          width: 185,
                          decoration: BoxDecoration(
                            color: AppColors.grey.withOpacity(0.5),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(AppProps.kMediumBorderRadius),
                              bottomRight: Radius.circular(AppProps.kMediumBorderRadius),
                            ),
                          ),
                          child: Text("${grid[index].city!}, ${grid[index].country!}",
                              style: AppTextStyle.s14w400
                                  .copyWith(fontWeight: FontWeight.w600, color: AppColors.whiteText)),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
