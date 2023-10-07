import 'package:flutter/material.dart';
import 'package:flutter_codepur1/app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Hello World", (widgetTester) async {
    await widgetTester.pumpWidget(const MyApp());

    expect(find.byType(Container), findsOneWidget);
    expect(find.byType(Text), findsOneWidget);
    expect(find.text("Hello World"), findsOneWidget);
  });
}
