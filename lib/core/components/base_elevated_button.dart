import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        icon: const Icon(
          CupertinoIcons.add,
          size: 16,
          color: Colors.white,
        ),
        onPressed: () {},
        label: Text(
            textAlign: TextAlign.center,
            'Label',
            style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white, fontWeight: FontWeight.w400)),
      ),
    );
  }
}
