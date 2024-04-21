import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  CustomDropDown({
    super.key,
  });

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  final List<String> iconPaths = [
    'icons/flags/png100px/kg.png',
    'icons/flags/png100px/kz.png',
    'icons/flags/png100px/ru.png',
    'icons/flags/png100px/es.png',
    'icons/flags/png100px/it.png',
    'icons/flags/png100px/eu.png',
  ];

  String currentIconPath = 'icons/flags/png100px/kg.png';

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuItem<String>> _dropDownMenu = iconPaths
        .map((String path) => DropdownMenuItem<String>(
              value: path,
              child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(36)),
                  child: Image.asset(
                    path,
                    package: 'country_icons',
                    width: 34,
                    height: 34,
                  )),
            ))
        .toList();

    return DropdownButton<String>(
      items: _dropDownMenu,
      value: currentIconPath,
      onChanged: (String? newPath) {
        setState(() {
          currentIconPath = newPath!;
        });
      },
    );
  }
}
