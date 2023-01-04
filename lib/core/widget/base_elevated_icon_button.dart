import 'package:flutter/material.dart';

import '../type_def.dart';
import 'custom_circular_loading.dart';

class BaseElevatedIconButton extends StatefulWidget {
  const BaseElevatedIconButton({super.key, required this.title, required this.onTap, required this.icon});
  final String title;
  final FutureCallBack onTap;
  final IconData icon;

  @override
  State<BaseElevatedIconButton> createState() => _BaseElevatedIconButtonState();
}

class _BaseElevatedIconButtonState extends State<BaseElevatedIconButton> {
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
    return ElevatedButton.icon(
      icon: Icon(
        widget.icon,
        size: 16,
        color: Colors.white,
      ),
      onPressed: _isLoading ? null : _completeDelayed,
      label: _isLoading
          ? CustomLoader()
          : Text(
              textAlign: TextAlign.center,
              widget.title,
              style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white, fontWeight: FontWeight.w400)),
    );
  }
}
