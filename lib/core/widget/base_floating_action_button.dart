import 'package:flutter/material.dart';

import '../type_def.dart';
import 'custom_circular_loading.dart';

class BaseFloatingActionButton extends StatefulWidget {
  const BaseFloatingActionButton({
    super.key,
    required this.onTap,
    required this.icon,
  });
  final FutureCallBack onTap;
  final IconData icon;

  @override
  State<BaseFloatingActionButton> createState() => _BaseFloatingActionButtonState();
}

class _BaseFloatingActionButtonState extends State<BaseFloatingActionButton> {
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
    return FloatingActionButton(
      onPressed: _isLoading ? null : _completeDelayed,
      child: _isLoading
          ? CustomLoader()
          : Icon(
              widget.icon,
              color: Colors.white,
            ),
    );
  }
}
