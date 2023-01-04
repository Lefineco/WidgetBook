import 'package:flutter/material.dart';

import '../type_def.dart';
import 'custom_circular_loading.dart';

class BaseElevatedButton extends StatefulWidget {
  BaseElevatedButton({super.key, required this.onTap, required this.title, this.minimumSize = const Size(144, 56)});
  final String title;
  final FutureCallBack onTap;
  final Size? minimumSize;

  @override
  State<BaseElevatedButton> createState() => _BaseElevatedButtonState();
}

class _BaseElevatedButtonState extends State<BaseElevatedButton> {
  bool _isLoading = false;
  void _changeLoading() {
    if (mounted) {
      setState(() => _isLoading = !_isLoading);
    }
  }

  Future<void> _completeDelayed() async {
    _changeLoading();
    await widget.onTap();
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: widget.minimumSize),
      onPressed: _isLoading ? null : _completeDelayed,
      child: _isLoading
          ? CustomLoader()
          : Text(widget.title, style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white, fontWeight: FontWeight.w400)),
    );
  }
}
