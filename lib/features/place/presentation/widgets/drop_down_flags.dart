import 'package:flutter/material.dart';
import 'package:neo_tour/core/app/shared/app_constants.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({
    super.key,
  });

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String currentIconPath = 'icons/flags/png100px/kg.png';

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuItem<String>> dropDownMenu = Constants.iconPaths
        .map((String path) => DropdownMenuItem<String>(
              value: path,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: Image.asset(
                    path,
                    package: 'country_icons',
                    width: 34,
                    height: 34,
                  )),
            ))
        .toList();

    return DropdownButton<String>(
      items: dropDownMenu,
      value: currentIconPath,
      onChanged: (String? newPath) {
        setState(() {
          currentIconPath = newPath!;
        });
      },
    );
  }
}
