import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class BaseTextArea extends StatelessWidget {
  const BaseTextArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        child: CustomTextFormField(
          labelText: "Label",
          hintText: "Content",
          helperText: "Help Text",
          minLines: 9, // any number you need (It works as the rows for the textarea)
          keyboardType: TextInputType.multiline,
        ),
      ),
    );
  }
}
