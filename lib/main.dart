import 'package:counter_application/counter.dart' show Counter;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterScreen());
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final Counter counter = Counter();

  void increment() {
    setState(() {
      counter.increment();
    });
  }

  void decrement() {
    setState(() {
      counter.decrement();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count: ${counter.value}"),
            const SizedBox(height: 20),
            ElevatedButton(
              key: const Key('increment_button'),
              onPressed: increment,
              child: const Text("Increment"),
            ),
            ElevatedButton(
              key: const Key('decrement_button'),
              onPressed: decrement,
              child: const Text("Decrement"),
            ),
          ],
        ),
      ),
    );
  }
}
