import 'dart:ffi';
import 'dart:ui' as Size;

import 'package:flutter/material.dart';

import 'package:neo_tour/core/app/io_ui.dart';

class CustomElevatedButton extends StatelessWidget {
  ButtonStyle? buttonStyle;
  IconData? icon;
  final String text;
  final TextStyle textstyle;
  final VoidCallback onTap;

  CustomElevatedButton({
    this.icon,
    this.buttonStyle,
    required this.textstyle,
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle,
      onPressed: onTap,
      child: icon == null
          ? Text(text, style: textstyle)
          : Row(children: [
              Text(
                text,
                style: textstyle,
              ),
              const Spacer(),
              Icon(
                icon,
                color: AppColors.whiteText,
              )
            ]),
    );
  }
}
