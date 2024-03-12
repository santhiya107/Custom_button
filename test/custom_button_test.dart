import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:custom_button/custom_button.dart';

void main() {
  testWidgets('CustomButton Widget Test', (WidgetTester tester) async {
    // Build our widget
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: CustomButton(
          value: 'Test Button',
          fontsize: 16.0,
          color: Colors.white,
          onPressed: () {},
        ),
      ),
    ));

    // Find the button by key or any other way you want to test
    final testButton = find.text('Test Button');

    // Verify that button is rendered
    expect(testButton, findsOneWidget);
  });
}
