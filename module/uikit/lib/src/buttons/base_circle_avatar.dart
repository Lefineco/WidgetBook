import 'package:Lefine/core/extension/image_extension.dart';
import 'package:flutter/material.dart';

class BaseCircleAvatar extends StatelessWidget {
  const BaseCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircleAvatar(
            radius: 82, backgroundColor: const Color(0xff000000), child: CircleAvatar(radius: 80, backgroundImage: ImageEnums.batman.toAsset)));
  }
}
