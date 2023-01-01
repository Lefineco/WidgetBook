import 'package:flutter/material.dart';

class BaseCircleAvatar extends StatelessWidget {
  const BaseCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircleAvatar(
            radius: 82,
            backgroundColor: Color(0xff000000),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/batman.png'),
            )));
  }
}
