import 'package:flutter/material.dart';

import 'package:neo_tour/core/app/io_ui.dart';

class CustomElevatedButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final VoidCallback onTap;

  const CustomElevatedButton({
    this.icon,
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          AppColors.primaryColor,
        ),
      ),
      onPressed: onTap,
      child: icon == null
          ? Text(text, style: AppTextStyle.s18w500Whitr)
          : Row(mainAxisSize: MainAxisSize.min, children: [
              Text(
                text,
                style: AppTextStyle.s18w500Whitr,
              ),
              const SizedBox(width: 20),
              Icon(
                icon,
                color: AppColors.whiteText,
              )
            ]),
    );
  }
}
