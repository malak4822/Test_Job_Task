import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testjobtask/main.dart';

void main() {
  testWidgets('Color change test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Find the initial color of the ColoredBox
    final initialColorFinder = find.byType(ColoredBox);
    final initialColor =
        (initialColorFinder.evaluate().first.widget as ColoredBox).color;

    // Trigger a tap on the InkWell to change the color
    await tester.tap(find.byType(InkWell));
    await tester.pump();

    // Find the new color of the ColoredBox after the tap
    final newColorFinder = find.byType(ColoredBox);
    final newColor =
        (newColorFinder.evaluate().first.widget as ColoredBox).color;

    // Expect that the new color is different from the initial color
    expect(newColor, isNot(equals(initialColor)));
  });
}
