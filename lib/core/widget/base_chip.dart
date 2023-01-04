import 'package:flutter/material.dart';

class BaseChip extends StatelessWidget {
  BaseChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Chip(
        label: Text(
          'Label',
          style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
