import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/calculator.dart';

void main() {
  group('add', () {
    test('calculator return 5 when 1+4', () {
      /// structure the 3 AAA - Arrange , Act, Assert

      // Arrange (Setup) -> create calculator object
      final calculator = Calculator();

      // Act (Action) -> collect the result which you want to test
      final result = calculator.add(1, 4);

      // Assert (Result) -> compare the result against and expected value
      expect(
        result,
        5,
        reason: 'it should be exactly 5',
      );
    });

    /// method matcher of test
    test('calculator creates non null object', () {
      expect(Calculator(), isNotNull);
    });

    /// TypeMatcher
    test('calculator returns double number (5.0) 5 when 1+4', () {
      final calculator = Calculator();

      final result = calculator.add(1, 4);

      expect(
        result,
        isA<double>(),
      );
    });
  });

  group('subtract', () {
    test('subtracting 6-1 = 5', () {
      final calculator = Calculator();
      final result = calculator.subtract(6, 1);

      expect(result, 5);
    });
  });

  group('multiply', () {
    test('multiplying 2 * 5 = 10', () {
      final calculator = Calculator();
      final result = calculator.multiply(2, 5);

      expect(result, 10);
    });
  });

  group('divide', () {
    test('dividing 10 / 2 = 5', () {
      final calculator = Calculator();
      final result = calculator.divide(10, 2);

      expect(result, 5);
    });
    test('calculator throws an ArgumentError when going to divide by zero', () {
      final calculator = Calculator();
      expect(() => calculator.divide(10, 0), throwsArgumentError);
    });
  });

  group('powerOfTwo', () {
    final calculator = Calculator();
    test('calculator returns 16 when input is 4', () async {
      expect(await calculator.powerOfTwo(4), 16);
    });
  });

  group('fibonacci sequence', () {
    final calculator = Calculator();
    test('calculator returns [0, 1, 1, 2, 3, 5, 8, 13, 21]', () {
      expect(
        calculator.fibonacciSequence(),
        emitsInOrder(
          [0, 1, 1, 2, 3, 5, 8, 13, 21],
        ),
      );
    });
  });
}
