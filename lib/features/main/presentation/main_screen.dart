import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:neo_tour/core/app/io_ui.dart";
import "package:neo_tour/features/main/presentation/blocs/bloc_carousel/main_bloc.dart";
import "package:neo_tour/features/main/presentation/blocs/bloc_grid_view/grid_view_bloc.dart";
import "package:neo_tour/features/main/presentation/widgets/build_carousel.dart";
import "package:neo_tour/features/main/presentation/widgets/build_grid_view.dart";
import "package:neo_tour/features/main/presentation/widgets/circle_tab_indicator.dart";

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    context.read<MainBloc>().add(
          const MainEvent.loading(index: 0),
        );
    context.read<GridViewBloc>().add(
          const GridViewEvent.loading(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteText,
        title: const Text(
          "Discover",
          style: AppTextStyle.s32w900,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
          BlocBuilder<MainBloc, MainState>(builder: (context, state) {
            return state.when(
              failure: () => const Center(
                child: Text('No'),
              ),
              loading: () {
                return Container();
              },
              success: (carousel, category, i) => Column(
                children: [
                  SizedBox(
                    height: 70,
                    child: DefaultTabController(
                      length: category.length,
                      child: _buildTabBar(category, i),
                    ),
                  ),
                ],
              ),
            );
          }),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselWidget(),
              SizedBox(height: AppProps.kPageMarginX2),
              Padding(
                padding: EdgeInsets.only(left: AppProps.kPageMargin),
                child: Text(
                  "Recommended",
                  style: AppTextStyle.s20w900,
                ),
              ),
              SizedBox(height: 18),
              BuilGridView(),
            ],
          ),
        ]),
      ),
    );
  }

  TabBar _buildTabBar(List<Tab> category, int i) {
    TabController? tabController;
    tabController = TabController(length: category.length, vsync: this, initialIndex: i);
    int? selectedIndex = 0;
    tabController.addListener(() {
      setState(() {
        selectedIndex = tabController!.index;
      });
    });

    return TabBar(
      controller: tabController,
      onTap: (ind) {
        context.read<MainBloc>().add(
              MainEvent.loading(index: selectedIndex),
            );
      },
      tabAlignment: TabAlignment.start,
      indicatorSize: TabBarIndicatorSize.tab,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      isScrollable: true,
      dividerColor: Colors.transparent,
      unselectedLabelStyle: AppTextStyle.s16w400,
      labelStyle: AppTextStyle.categoryTrue,
      indicator: CircleTabIndicator(
        color: AppColors.primaryColor,
        radius: 4,
      ),
      tabs: category,
    );
  }
}
