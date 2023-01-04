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
        toggleable: true,
        value: _radioValue,
        groupValue: false,
        title: Text('Lorem ipsum dolor sit amet',
            style: _radioValue
                ? Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black, fontSize: 16)
                : Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16)),
        onChanged: (value) {
          setState(() {
            value = _radioValue = !_radioValue;
          });
        },
      ),
    );
  }
}
