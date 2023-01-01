import 'package:flutter/material.dart';

class BaseTextArea extends StatelessWidget {
  const BaseTextArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        child: TextFormField(
          decoration: InputDecoration(
            labelText: "Label",
            hintText: "Content",
            helperText: "Help Text",
          ),
          minLines: 6, // any number you need (It works as the rows for the textarea)
          keyboardType: TextInputType.multiline,
          maxLines: null,
        ),
      ),
    );
  }
}
