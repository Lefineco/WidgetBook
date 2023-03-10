import 'package:flutter/material.dart';

class BaseChip extends StatelessWidget {
  const BaseChip({super.key, this.label = "Label"});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Chip(
        label: Text(
          label,
          style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
