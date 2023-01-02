import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    String? labelText,
    String? hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    String? helperText,
    bool isObscureText = false,
    String? Function(String?)? validator,
    TextEditingController? controller,
  })  : _labelText = labelText,
        _hintText = hintText,
        _prefixIcon = prefixIcon,
        _suffixIcon = suffixIcon,
        _helperText = helperText,
        _validator = validator,
        _isObscureText = isObscureText,
        _passwordConfirmController = controller,
        super(key: key);

  final TextEditingController? _passwordConfirmController;
  final String? _labelText;

  final String? _hintText;
  final Widget? _prefixIcon;
  final Widget? _suffixIcon;
  final String? _helperText;
  final bool _isObscureText;
  final String? Function(String?)? _validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: _passwordConfirmController,
      obscureText: _isObscureText,
      decoration: InputDecoration(
        labelText: _labelText,
        helperText: _helperText,
        hintText: _hintText,
        prefixIcon: _prefixIcon,
        suffixIcon: _suffixIcon,
      ),
      validator: _validator,
    );
  }
}
