import 'package:flutter/material.dart';
import 'package:neo_tour/core/app/io_ui.dart';

class CounterButton extends StatelessWidget {
  final int count;
  final Function setNewValue;

  const CounterButton({
    super.key,
    required this.count,
    required this.setNewValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.buttongrey,
      ),
      child: Row(
        children: [
          Wrap(children: [
            SizedBox(
              height: 36,
              width: 29,
              child: IconButton(
                onPressed: () {
                  if (count != 1) {
                    int newCount = count - 1;
                    setNewValue(newCount);
                  }
                },
                icon: const Icon(
                  Icons.remove,
                  color: AppColors.whiteText,
                  size: 15,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.activeCarousel), // изменение цвета кнопки
                ),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              '$count',
              style: AppTextStyle.s16w500Black,
            ),
          ),
          Wrap(children: [
            SizedBox(
              height: 36,
              width: 29,
              child: IconButton(
                color: AppColors.activeCarousel,
                disabledColor: AppColors.unActiveCarousel,
                onPressed: () {
                  if (count == 5) {
                    return;
                  } else {
                    int newCount = count + 1;
                    setNewValue(newCount);
                  }
                },
                icon: const Icon(
                  Icons.add,
                  color: AppColors.whiteText,
                  size: 15,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.activeCarousel), // изменение цвета кнопки
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
