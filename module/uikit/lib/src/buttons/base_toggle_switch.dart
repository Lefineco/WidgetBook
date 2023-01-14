import 'package:flutter/material.dart';

class BaseSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const BaseSwitch({Key? key, required this.value, required this.onChanged}) : super(key: key);

  @override
  State<BaseSwitch> createState() => _BaseSwitchState();
}

class _BaseSwitchState extends State<BaseSwitch> with SingleTickerProviderStateMixin {
  Animation<dynamic>? _circleAnimation;
  AnimationController? _animationController;

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.centerRight : Alignment.centerLeft, end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(parent: _animationController!, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController!.isCompleted) {
              _animationController!.reverse();
            } else {
              _animationController!.forward();
            }
            widget.value == false ? widget.onChanged(true) : widget.onChanged(false);
          },
          child: Container(
            width: 64.0,
            height: 40.0,
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(40),
              color: _circleAnimation!.value == Alignment.centerLeft ? Colors.black : Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0, bottom: 6.0, right: 6.0, left: 6.0),
              child: Container(
                alignment: widget.value
                    ? ((Directionality.of(context) == TextDirection.rtl) ? Alignment.centerRight : Alignment.centerLeft)
                    : ((Directionality.of(context) == TextDirection.rtl) ? Alignment.centerLeft : Alignment.centerRight),
                child: Container(
                  padding: const EdgeInsets.only(top: 8, left: 8),
                  width: 24.0,
                  height: 24.0,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: widget.value ? Colors.black : Colors.white),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
