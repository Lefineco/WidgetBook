import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../gen/assets.gen.dart';
import '../init/theme/dark/dark_theme_interface.dart';

class BaseCheckBox extends StatefulWidget {
  const BaseCheckBox({
    Key? key,
    this.width = 24.0,
    this.height = 24.0,
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
  final VoidCallback Function(bool?)? onChanged;

  @override
  State<BaseCheckBox> createState() => _BaseCheckBoxState();
}

class _BaseCheckBoxState extends State<BaseCheckBox> with IDarkTheme {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
          overlayColor: MaterialStatePropertyAll(colorSchemeDark.baseTransparentColor),
          onTap: () {
            setState(() => _isChecked = !_isChecked);
            widget.onChanged?.call(_isChecked);
          },
          child: _isChecked
              ? AnimatedContainer(
                  duration: context.durationLow,
                  width: widget.width,
                  height: widget.height,
                  curve: Curves.decelerate,
                  decoration: BoxDecoration(
                    color: colorSchemeDark.baseBlack,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Assets.images.svg.icTick.svg(height: 5, width: 5, color: Colors.white),
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
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                )),
    );
  }
}
