import 'package:flutter/material.dart';

import '../custom_text_form_field.dart';

class BaseFormInput extends StatelessWidget {
  const BaseFormInput({super.key, required this.label, this.hintText = "Content", this.helperText = "Help Text"});

  final String label;
  final String hintText;
  final String helperText;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Label',
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        CustomTextFormField(
          labelText: label,
          hintText: hintText,
          helperText: helperText,
        ),
      ],
    ));
  }
}
