import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/calculator.dart';

void main() {
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
}
