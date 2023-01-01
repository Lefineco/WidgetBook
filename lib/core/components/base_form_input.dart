import 'package:flutter/material.dart';

class BaseFormInput extends StatelessWidget {
  const BaseFormInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "Label",
          helperText: "Help Text",
        ),
      ),
    );
  }
}
