import "package:flutter/material.dart";
import "package:neo_tour/core/app/io_ui.dart";

class OndoardinsScreen extends StatelessWidget {
  const OndoardinsScreen({super.key});

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
                  color: AppColors.black),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 283,
                    child: Text(
                      'Winter Vacation Trips',
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
                  Container(
                    height: 53,
                    width: 177,
                    decoration: const BoxDecoration(
                        color: AppColors.primaryColor, borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Let’s Go!",
                          style: AppTextStyle.s16w500Whitr,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: AppColors.whiteText,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
