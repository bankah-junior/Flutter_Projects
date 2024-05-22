import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDropDownButtonClass extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropDownButtonClass(
      {super.key, required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(
          45,
          64,
          78,
          1.0,
        ),
        borderRadius: BorderRadius.circular(
          10,
        ),
        border: Border.all(width: 0.8, color: Colors.white),
      ),
      child: DropdownButton(
        value: values.first,
        onChanged: (_) {},
        items: values.map(
          (e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          },
        ).toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(
          45,
          64,
          78,
          1.0,
        ),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
