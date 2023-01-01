import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'base_elevated_button.dart';
import 'custom_text_form_field.dart';

class BaseForm extends StatefulWidget {
  const BaseForm({super.key});

  @override
  State<BaseForm> createState() => _BaseFormState();
}

class _BaseFormState extends State<BaseForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _value = false;
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  "Login",
                  style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black),
                ),
              ),
              context.emptySizedHeightBoxNormal,
              CustomTextFormField(hintText: "0Fatihyildiz"),
              context.emptySizedHeightBoxLow,
              CustomTextFormField(
                hintText: "fatih!051166",
                isObscureText: !_isVisible ? true : false,
                suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        _isVisible = !_isVisible;
                        print(_isVisible);
                      });
                    },
                    child: Icon(
                      _isVisible ? Icons.visibility : Icons.visibility_off,
                      color: Colors.black,
                    )),
              ),
              context.emptySizedWidthBoxLow,
              CheckboxListTile(
                value: _value,
                contentPadding: EdgeInsets.zero,
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Label'),
                onChanged: (bool? value) => setState(() => _value = value ?? false),
              ),
              context.emptySizedWidthBoxLow3x,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BaseButton(),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 8.5)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Text(
                        'Cancel',
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
