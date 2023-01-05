import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../gen/assets.gen.dart';
import '../init/theme/dark/dark_theme_interface.dart';
import '../type_def.dart';

class BaseCheckBox extends StatefulWidget {
  const BaseCheckBox({
    Key? key,
    this.width = 18.0,
    this.height = 18.0,
    this.color,
    this.iconSize,
    this.onChanged,
    this.checkColor,
  }) : super(key: key);

  final double width;
  final double height;
  final Color? color;
  final double? iconSize;
  final Color? checkColor;
  final FunctionCallBack onChanged;

  @override
  State<BaseCheckBox> createState() => _BaseCheckBoxState();
}

class _BaseCheckBoxState extends State<BaseCheckBox> with IDarkTheme {
  bool _isChecked = false;

  void _changeTick() {
    setState(() => _isChecked = !_isChecked);
    widget.onChanged?.call(_isChecked);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        overlayColor: MaterialStatePropertyAll(colorSchemeDark.baseTransparentColor),
        onTap: () => _changeTick(),
        child: _isChecked
            ? AnimatedContainer(
                duration: context.durationLow,
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                  color: colorSchemeDark.baseBlack,
                  borderRadius: BorderRadius.circular(3.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Assets.images.svg.icTick.svg(height: 6.5, width: 9, color: Colors.white),
                ),
              )
            : AnimatedContainer(
                duration: context.durationLow,
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: widget.color ?? colorSchemeDark.baseDarkGrey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(3.0),
                ),
              ));
  }
}
