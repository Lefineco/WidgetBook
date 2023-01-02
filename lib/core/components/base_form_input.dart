import 'package:flutter/material.dart';

class BaseFormInput extends StatelessWidget {
  const BaseFormInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          labelText: "Label",
          hintText: "Content",
          helperText: "Help Text",
        ),
      ),
    );
  }
}
