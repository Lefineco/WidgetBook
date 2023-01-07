import 'package:flutter/material.dart';

mixin ButtonLoader<T extends StatefulWidget> on State<T> {
  Future<void> promiseToFuture() async {
    await Future.delayed(Duration(seconds: 2), () {
      return null;
    });
  }
}
