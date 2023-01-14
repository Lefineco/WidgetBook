import 'package:Lefine/core/type_def.dart';
import 'package:flutter/material.dart';

import '../custom_circular_loading.dart';

class BaseElevatedIconButton extends StatefulWidget {
  const BaseElevatedIconButton(
      {super.key,
      required this.title,
      required this.onTap,
      required this.icon,
      this.minimumSize = const Size(144, 56),
      this.iconSize = 16,
      this.color = Colors.white});
  final String title;
  final FutureCallBack onTap;
  final IconData icon;
  final Size? minimumSize;
  final double? iconSize;
  final Color? color;

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
      style: ElevatedButton.styleFrom(
        minimumSize: widget.minimumSize,
      ),
      icon: Icon(
        widget.icon,
        size: widget.iconSize,
        color: widget.color,
      ),
      onPressed: _isLoading ? null : _completeDelayed,
      label: _isLoading
          // ignore: prefer_const_constructors
          ? CustomLoader()
          : Text(
              textAlign: TextAlign.center,
              widget.title,
              style: Theme.of(context).textTheme.button?.copyWith(color: widget.color, fontWeight: FontWeight.w400)),
    );
  }
}
