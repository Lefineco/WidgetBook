import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../product/widgets/icon/secure_icon.dart';
import 'base_elevated_icon_button.dart';
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
              context.emptySizedHeightBoxLow,
              _buildNameField(),
              _buildPasswordField(),
              context.emptySizedWidthBoxLow,
              CheckboxListTile(
                value: _value,
                contentPadding: EdgeInsets.zero,
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  'Label',
                  style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.w600),
                ),
                onChanged: (bool? value) => setState(() => _value = value ?? false),
              ),
              context.emptySizedWidthBoxLow3x,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BaseElevatedIconButton(
                    icon: CupertinoIcons.add,
                    onTap: () async {},
                    title: "Base",
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 8.5)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom().copyWith(
                      elevation: MaterialStatePropertyAll(0),
                      side: MaterialStatePropertyAll(BorderSide(color: Color(0xffECECEC), width: 1)),
                      minimumSize: MaterialStatePropertyAll(Size(context.dynamicWidth(.0700), context.dynamicHeight(.01000))),
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Cancel',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  CustomTextFormField _buildPasswordField() {
    return CustomTextFormField(
      maxLines: 1,
      hintText: "fatih!051166",
      isObscureText: !_isVisible ? true : false,
      suffixIcon: InkWell(
          onTap: () {
            setState(() {
              _isVisible = !_isVisible;
              print(_isVisible);
            });
          },
          child: VisibilityIcon(
            isSecure: _isVisible,
          )),
    );
  }

  CustomTextFormField _buildNameField() {
    return CustomTextFormField(
      hintText: "0Fatihyildiz",
      maxLines: 1,
    );
  }
}