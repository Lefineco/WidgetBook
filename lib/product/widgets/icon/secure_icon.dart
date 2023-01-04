import 'package:flutter/material.dart';

class VisibilityIcon extends Icon {
  VisibilityIcon({required bool isSecure})
      : super(
          isSecure ? Icons.visibility : Icons.visibility_off,
          color: Colors.black,
        );
}
