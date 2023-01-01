import 'package:flutter/material.dart';

class BaseChip extends StatelessWidget {
  const BaseChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Chip(
        label: Text('Hello'),
      ),
    );
  }
}
