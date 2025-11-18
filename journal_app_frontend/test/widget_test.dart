import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:journal_app_frontend/main.dart';

void main() {
  testWidgets('App shows Ocean Journal title', (WidgetTester tester) async {
    await tester.pumpWidget(const OceanJournalApp());
    // Allow first frame
    await tester.pump();

    expect(find.text('Ocean Journal'), findsOneWidget);
    expect(find.byType(AppBar), findsOneWidget);
  });
}
