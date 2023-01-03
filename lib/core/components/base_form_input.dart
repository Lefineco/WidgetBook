import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class BaseFormInput extends StatelessWidget {
  const BaseFormInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CustomTextFormField(
      labelText: "Label",
      hintText: "Content",
      helperText: "Help Text",
    ));
  }
}
