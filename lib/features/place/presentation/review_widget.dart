import "package:flutter/material.dart";
import "package:neo_tour/core/app/io_ui.dart";

class ReviewCard extends StatefulWidget {
  const ReviewCard({super.key});

  @override
  State<ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Row(
            children: [
              Icon(Icons.person_2, color: AppColors.black),
              SizedBox(
                width: 8,
              ),
              Text(
                'Anonymous',
                style: AppTextStyle.s16w500Black,
              )
            ],
          ),
          Text(
            'That was such a nice place. The most beautiful place I’ve ever seen. My advice to everyone not to forget to take warm coat',
            style: AppTextStyle.s16w400,
          )
        ]),
      ),
    );
  }
}
