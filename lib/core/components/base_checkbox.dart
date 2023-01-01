import 'package:flutter/material.dart';

class BaseCheckBox extends StatefulWidget {
  const BaseCheckBox({super.key});

  @override
  State<BaseCheckBox> createState() => _BaseCheckBoxState();
}

class _BaseCheckBoxState extends State<BaseCheckBox> {
  bool _checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Checkbox(
      value: _checkBoxValue,
      onChanged: (value) {
        setState(() {
          value = _checkBoxValue = !_checkBoxValue;
        });
      },
    ));
  }
}
