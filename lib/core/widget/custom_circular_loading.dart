import 'package:flutter/material.dart';

import '../constants/app/app_constants.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      padding: const EdgeInsets.all(2.0),
      child: CircularProgressIndicator(
        color: primaryMaterialColor,
        strokeWidth: 3,
      ),
    );
  }
}
