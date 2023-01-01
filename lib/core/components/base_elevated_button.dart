import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        icon: const Icon(
          color: Colors.white,
          CupertinoIcons.add,
        ),
        onPressed: () {},
        label: Text(textAlign: TextAlign.center, 'Label', style: Theme.of(context).textTheme.headline6),
      ),
    );
  }
}
