import 'package:counter_application/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  group('Counter Unit Tests', (){
    test('Initial value should be zero', (){
      final counter = Counter();

      expect(counter.value,0);
    });

    test('Counter should increment', (){
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
      
    });

    test('Counter should decrement', (){
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });

    test('Counter should increment multiple times', (){
      final counter = Counter();

      counter.increment();
      counter.increment();
      counter.increment();

      expect(counter.value, 3);
    });
  });
}