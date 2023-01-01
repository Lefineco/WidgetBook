import 'package:flutter/material.dart';

class BaseFloatingActionButton extends StatelessWidget {
  const BaseFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
