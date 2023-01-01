import 'package:flutter/material.dart';

class BaseRadioButton extends StatefulWidget {
  const BaseRadioButton({super.key});

  @override
  State<BaseRadioButton> createState() => _BaseRadioButtonState();
}

class _BaseRadioButtonState extends State<BaseRadioButton> {
  bool _radioValue = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RadioListTile(
        value: _radioValue,
        groupValue: false,
        title: Text(
          'Lorem ipsum dolor sit amet',
          style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
        ),
        onChanged: (value) {
          setState(() {
            value = _radioValue = !_radioValue;
          });
        },
      ),
    );
  }
}
