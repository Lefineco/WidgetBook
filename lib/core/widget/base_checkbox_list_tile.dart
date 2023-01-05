import 'package:flutter/material.dart';

import '../init/theme/dark/dark_theme_interface.dart';
import 'base_checkbox.dart';

class BaseCheckBoxListTile extends StatefulWidget {
  const BaseCheckBoxListTile(
      {Key? key,
      this.width = 24.0,
      this.height = 24.0,
      this.color,
      this.iconSize,
      this.onChanged,
      this.checkColor,
      required this.title,
      this.minLeadingWidth = 8})
      : super(key: key);

  final double width;
  final double height;
  final Color? color;
  final double? iconSize;
  final Color? checkColor;
  final VoidCallback Function(bool?)? onChanged;
  final String title;
  final double minLeadingWidth;

  @override
  State<BaseCheckBoxListTile> createState() => _BaseCheckBoxListTileState();
}

class _BaseCheckBoxListTileState extends State<BaseCheckBoxListTile> with IDarkTheme {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: BaseCheckBox(),
      minLeadingWidth: widget.minLeadingWidth,
      title: Text(
        widget.title,
        style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
