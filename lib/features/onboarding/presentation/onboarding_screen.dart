import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:neo_tour/core/app/io_ui.dart";
import "package:neo_tour/core/app/router/router.dart";
import "package:neo_tour/core/app/widgets/custom_elevated_button.dart";
import "package:neo_tour/gen/assets.gen.dart";

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 480,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(AppProps.kBorderRadius36),
                ),
              ),
              child: Assets.images.onBoardImage.image(),
            ),
            const SizedBox(height: AppProps.kPageMarginX2),
            Padding(
              padding: const EdgeInsets.only(left: AppProps.kPageMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    child: Text(
                      'Winter \nVacation Trips',
                      style: AppTextStyle.s36w900,
                    ),
                  ),
                  const SizedBox(
                    height: AppProps.kMediumMargin,
                  ),
                  const SizedBox(
                    child: Text(
                        "Enjoy your winter vacations with warmth \nand amazing sightseeing on the mountains. \nEnjoy the best experience with us!",
                        style: AppTextStyle.s16w400),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomElevatedButton(
                      text: "Let's Go!",
                      onTap: () {
                        AutoRouter.of(context).replace(
                          const MainRoute(),
                        );
                      },
                      icon: Icons.arrow_forward),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
