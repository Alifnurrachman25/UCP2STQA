import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:form_example/main.dart' as app;
import 'package:form_example/view_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Verifikasi submit data', (WidgetTester tester) async {
    app.main();

    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 2));

    // Enter data in the text fields
    await tester.enterText(find.byType(TextField).at(0), 'Alif nur rachman');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(1), '20210140029');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(2), '25-05-2003');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(3), 'Laki - laki');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(4), '082152069360');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(5), 'Senior High School');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(6), 'Islam');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(7), 'Programmer');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(8), 'Pasar gamping');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(9), 'Premium');
    await Future.delayed(const Duration(seconds: 2));

    await tester.tap(find.byType(ElevatedButton));
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 2));

    // Check if ViewPage is displayed
    expect(find.byType(ViewPage), findsOneWidget);
  });
}
