import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    String? hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    String? helperText,
    TextInputType? keyboardType,
    int? minLines,
    int? maxLines: null,
    String? labelText,
    bool isObscureText = false,
    String? Function(String?)? validator,
    TextEditingController? controller,
  })  : _hintText = hintText,
        _prefixIcon = prefixIcon,
        _suffixIcon = suffixIcon,
        _helperText = helperText,
        _validator = validator,
        _isObscureText = isObscureText,
        _controller = controller,
        _minLines = minLines,
        _keyboardType = keyboardType,
        _maxLines = maxLines,
        _labelText = labelText,
        super(key: key);

  final TextEditingController? _controller;

  final String? _hintText;
  final Widget? _prefixIcon;
  final Widget? _suffixIcon;
  final String? _helperText;
  final bool _isObscureText;
  final String? Function(String?)? _validator;

  final int? _minLines;
  final TextInputType? _keyboardType;
  final int? _maxLines;
  final String? _labelText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _labelText ?? '',
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        _emptyHeightWidget(),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: _controller,
          obscureText: _isObscureText,
          minLines: _minLines,
          maxLines: _maxLines,
          keyboardType: _keyboardType,
          decoration: InputDecoration(
            helperText: _helperText,
            hintText: _hintText,
            prefixIcon: _prefixIcon,
            suffixIcon: _suffixIcon,
          ),
          validator: _validator,
        ),
      ],
    );
  }

  SizedBox _emptyHeightWidget() {
    return SizedBox(height: 6);
  }
}
