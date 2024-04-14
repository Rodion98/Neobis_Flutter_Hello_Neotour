import "package:dots_indicator/dots_indicator.dart";
import "package:flutter/material.dart";
import "package:neo_tour/core/app/io_ui.dart";

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Tour> _tours = [
    Tour(
      name: 'Popular',
    ),
    Tour(
      name: 'Featured',
    ),
    Tour(
      name: 'Most Visited ',
    ),
  ];

  int _selectedCategoryIndex = 0;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Discover",
        style: AppTextStyle.s32w900,
      )),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _tours.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedCategoryIndex = index;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Text(
                        _tours[index].name,
                        style: _selectedCategoryIndex == index ? AppTextStyle.categoryTrue : AppTextStyle.categoryFalse,
                      ),
                    ),
                    if (_selectedCategoryIndex == index)
                      Container(
                        height: 7,
                        width: 7,
                        decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.primaryColor),
                      )
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 270,
          width: 700,
          child: PageView.builder(
            itemBuilder: (context, index) {
              return CarouselCard(
                car: cars[index],
              );
            },
            itemCount: cars.length,
            controller: PageController(initialPage: 1, viewportFraction: 0.85, keepPage: true),
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        Center(
          child: DotsIndicator(
            dotsCount: cars.length,
            position: _currentIndex,
            decorator: DotsDecorator(
              activeColor: AppColors.activeCarousel,
              color: AppColors.unActiveCarousel,
              spacing: const EdgeInsets.all(2),
              size: const Size(6, 6),
              activeSize: const Size(23.0, 6.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            "Recommended",
            style: AppTextStyle.s20w900,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: 370,
          width: MediaQuery.of(context).size.width,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  height: 185,
                  width: 185,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 41,
                        decoration: BoxDecoration(
                            color: AppColors.grey.withOpacity(0.5),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
                      ),
                    ],
                  ),
                );
              }),
        )
      ]),
    );
  }
}

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Tour {
  final String name;

  int currentIndex = 0;

  Tour({
    required this.name,
  });
}

class CarouselCard extends StatelessWidget {
  const CarouselCard({super.key, required this.car});

  final TeslaCar car;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0, bottom: 12),
      child: Container(
        width: 700,
        height: 270,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19.0),
          image: DecorationImage(image: NetworkImage(car.image), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("TEXT", style: AppTextStyle.s20w600White, textAlign: TextAlign.left),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

var cars = [
  TeslaCar(
      model: 'Roadster',
      image: 'https://wallpaperaccess.com/full/1152734.jpg',
      description:
          'As an all-electric supercar, Roadster maximizes the potential of aerodynamic engineering—with record-setting performance and efficiency.'),
  TeslaCar(
      model: 'Model S',
      image: 'https://wallpaperaccess.com/full/1152734.jpg',
      description:
          "Model S sets an industry standard for performance and safety. Tesla’s all-electric powertrain delivers unparalleled performance in all weather conditions."),
  TeslaCar(
      model: 'Model 3',
      image: 'https://wallpaperaccess.com/full/1152734.jpg',
      description:
          "Model 3 comes with the option of dual motor all-wheel drive, 20” Performance Wheels and Brakes and lowered suspension for total control, in all weather conditions."),
  TeslaCar(
      model: 'Model X',
      image: 'https://wallpaperaccess.com/full/1152734.jpg',
      description:
          "Tesla’s all-electric powertrain delivers Dual Motor All-Wheel Drive, adaptive air suspension and the quickest acceleration of any SUV on the road—from zero to 60 mph in 2.6 seconds."),
  TeslaCar(
      model: 'Model Y',
      image: 'https://wallpaperaccess.com/full/1152734.jpg',
      description:
          "Tesla All-Wheel Drive has two ultra-responsive, independent electric motors that digitally control torque to the front and rear wheels—for far better handling, traction and stability."),
  TeslaCar(
      model: 'Cyber Truck',
      image: 'https://wallpaperaccess.com/full/1152734.jpg',
      description:
          "The powerful drivetrain and low center of gravity provides extraordinary traction control and torque—enabling acceleration from 0-60 mph in as little as 2.9 seconds."),
];

class TeslaCar {
  TeslaCar({required this.model, required this.image, required this.description});

  String model;
  String image;
  String description;
}
