import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    "login screen",
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: Text('Login'),
          ),
        ),
      );
      await tester.pump();
      expect(find.text('Login'), findsNWidgets(1));
    },
  );
}
