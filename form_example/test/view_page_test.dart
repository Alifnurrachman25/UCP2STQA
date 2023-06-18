import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';

void main() {
  group('ViewPage', () {
    const String name = 'Alif nur rachman';
    const String identitynumber = '20210140029';
    const String birthdate = '25-05-2003';
    const String gender = 'Laki - Laki';
    const String phoneNumber = '082152069360';
    const String lasteducation = 'Senior High School';
    const String religion = 'Islam';
    const String job = 'Programmer';
    const String address = 'Pasar gamping';
    const String accounttype = 'Premium';

    testWidgets('Displays the correct information',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: ViewPage(
            name: name,
            identitynumber: identitynumber,
            birthdate: birthdate,
            gender: gender,
            phonenumber: phoneNumber,
            lasteducation: lasteducation,
            religion: religion,
            job: job,
            address: address,
            accounttype: accounttype,
          ),
        ),
      );

      expect(find.text('Name: $name'), findsOneWidget);
      expect(find.text('Identity Number: $identitynumber'), findsOneWidget);
      expect(find.text('Birht Date: $birthdate'), findsOneWidget);
      expect(find.text('Gender: $gender'), findsOneWidget);
      expect(find.text('Phone Number: $phoneNumber'), findsOneWidget);
      expect(find.text('Last Education: $lasteducation'), findsOneWidget);
      expect(find.text('Religion: $religion'), findsOneWidget);
      expect(find.text('Job: $job'), findsOneWidget);
      expect(find.text('Address: $address'), findsOneWidget);
      expect(find.text('Account Type: $accounttype'), findsOneWidget);
    });
  });
}
