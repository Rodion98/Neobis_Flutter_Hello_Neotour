import "package:auto_route/auto_route.dart";
import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:neo_tour/core/app/io_ui.dart";
import "package:neo_tour/core/app/shared/app_constants.dart";
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
    tabController = TabController(length: _tabs.length, vsync: this);
    tabController!.addListener(() {
      setState(() {
        _selectedIndex = tabController!.index;
      });
    });
    context.read<MainBloc>().add(
          const MainEvent.loading(index: 0),
        );
    context.read<GridViewBloc>().add(
          const GridViewEvent.loading(),
        );
  }

  final List<Tab> _tabs = Constnats.titles.map((title) => Tab(text: title)).toList();
  TabController? tabController;
  int? _selectedIndex = 0;
  final int _current = 0;
  final CarouselController _controller = CarouselController();

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
          SizedBox(
            height: 70,
            child: DefaultTabController(
              length: _tabs.length,
              child: Column(
                children: [
                  _buildTabBar(_selectedIndex),
                ],
              ),
            ),
          ),
          Column(
            children: [
              BuildCarousel(controller: _controller, current: _current),
              const SizedBox(height: 32),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Recommended",
                  style: AppTextStyle.s20w900,
                ),
              ),
              const SizedBox(height: 18),
              const BuilGtidView(),
            ],
          ),
        ]),
      ),
    );
  }

  TabBar _buildTabBar(int? ind) {
    return TabBar(
      controller: tabController,
      onTap: (ind) {
        context.read<MainBloc>().add(
              MainEvent.loading(index: ind),
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
      tabs: _tabs,
    );
  }
}
