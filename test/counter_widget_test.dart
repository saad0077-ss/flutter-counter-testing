import 'package:counter_application/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){

  group('Counter Widget Tests', (){
    testWidgets('Counter should initially display zero', 
      (tester) async {
        await tester.pumpWidget(
          const MyApp()
        );

        expect(find.text('Count: 0'), findsOneWidget);
      });

      testWidgets('Increment button should increase counter', (tester) async {
        await tester.pumpWidget(const MyApp());

        await tester.tap(
          find.byKey(const Key('increment_button'))
        );

        await tester.pump();

        expect(find.text('Count: 1'), findsOneWidget);
      });

      testWidgets('Decrement button should decrease counter', (tester) async {
        await tester.pumpWidget(const MyApp());

        await tester.tap(
          find.byKey(const Key('decrement_button'))
        );

        await tester.pump();

        expect(find.text('Count: -1'), findsOneWidget);
      });
  });
}