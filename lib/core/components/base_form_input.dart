import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class BaseFormInput extends StatelessWidget {
  const BaseFormInput({super.key, required this.label, this.hintText = "Content", this.helperText = "Help Text"});

  final String label;
  final String hintText;
  final String helperText;

  @override
  Widget build(BuildContext context) {
    return Center(child: CustomTextFormField(labelText: label, hintText: hintText, helperText: helperText));
  }
}
