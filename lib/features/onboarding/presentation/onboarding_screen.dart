import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:neo_tour/core/app/io_ui.dart";
import "package:neo_tour/core/app/router/router.dart";
import "package:neo_tour/core/app/widgets/custom_elevated_button.dart";
import "package:neo_tour/gen/assets.gen.dart";

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 480,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(37),
              ),
            ),
            child: Assets.images.onBoardImage.image(),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.only(left: 16),
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
                  height: 12,
                ),
                const SizedBox(
                  width: 300,
                  child: Text(
                      "Enjoy your winter vacations with warmth and amazing sightseeing on the mountains. Enjoy the best experience with us!",
                      style: AppTextStyle.s16w400),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomElevatedButton(
                    buttonStyle: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(const Size(177.14, 53)),
                      backgroundColor: MaterialStateProperty.all(
                        AppColors.primaryColor,
                      ),
                    ),
                    textstyle: AppTextStyle.s16w500Whitr,
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
    ));
  }
}
