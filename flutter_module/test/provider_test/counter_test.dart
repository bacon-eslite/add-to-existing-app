import 'package:flutter/material.dart';
import 'package:flutter_module/feature/home/provider/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('provider testing', () {
    testWidgets('counter increment', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: CounterApp(),
          ),
        ),
      );

      await tester.pump();

      expect(find.text('0'), findsOneWidget);

      await tester.tap(find.text('increment'));

      await tester.pump();

      expect(find.text('1'), findsOneWidget);
    });

    testWidgets('counter decrement', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: CounterApp(),
          ),
        ),
      );

      await tester.pump();

      expect(find.text('0'), findsOneWidget);

      await tester.tap(find.text('increment'));

      await tester.pump();

      expect(find.text('1'), findsOneWidget);

      await tester.tap(find.text('decrement'));

      await tester.pump();

      expect(find.text('0'), findsOneWidget);
    });

    testWidgets('counter reset', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: CounterApp(),
          ),
        ),
      );

      await tester.pump();

      expect(find.text('0'), findsOneWidget);

      await tester.tap(find.text('increment'));

      await tester.pump();

      expect(find.text('1'), findsOneWidget);

      await tester.tap(find.text('reset'));

      await tester.pump();

      expect(find.text('0'), findsOneWidget);
    });
  });
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Consumer(
      builder: (context, ref, child) {
        final counter = ref.watch(counterProvider);
        return Column(
          children: [
            Text('$counter'),
            ElevatedButton(
              onPressed: () => ref.read(counterProvider.notifier).increment(),
              child: const Text('increment'),
            ),
            ElevatedButton(
              onPressed: () => ref.read(counterProvider.notifier).decrement(),
              child: const Text('decrement'),
            ),
            ElevatedButton(
              onPressed: () => ref.read(counterProvider.notifier).reset(),
              child: const Text('reset'),
            )
          ],
        );
      },
    ));
  }
}
