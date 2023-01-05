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
    Widget label = const SizedBox(),
    String? labelText,
    bool isObscureText = false,
    bool readOnly = false,
    bool enableInteractiveSelection = false,
    String? Function(String?)? validator,
    TextEditingController? controller,
    String? errorText,
    bool enabled = true,
  })  : _hintText = hintText,
        _errorText = errorText,
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
        _readOnly = readOnly,
        _enableInteractiveSelection = enableInteractiveSelection,
        _enabled = enabled,
        _label = label,
        super(key: key);

  final TextEditingController? _controller;

  final String? _hintText;
  final Widget? _prefixIcon;
  final Widget? _suffixIcon;
  final String? _helperText;
  final String? _errorText;
  final bool _isObscureText;
  final String? Function(String?)? _validator;

  final int? _minLines;
  final TextInputType? _keyboardType;
  final int? _maxLines;
  final String? _labelText;
  final bool _readOnly;
  final bool _enableInteractiveSelection;
  final bool _enabled;
  final Widget _label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _label,
        /* Text(
          _labelText ?? '',
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.w600, fontSize: 16),
        ), */
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: _controller,
          obscureText: _isObscureText,
          minLines: _minLines,
          maxLines: _maxLines,
          enabled: _enabled,
          enableInteractiveSelection: _enableInteractiveSelection,
          readOnly: _readOnly,
          keyboardType: _keyboardType,
          decoration: InputDecoration(
            errorText: _errorText,
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
}
