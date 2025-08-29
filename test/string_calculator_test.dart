import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  group('StringCalculator', () {
    final calculator = StringCalculator();
    test('returns 0 for empty string', () {
      expect(calculator.add(""), equals(0));
    });

    test('returns number itself for a single number string', () {
      expect(calculator.add("1"), equals(1));
    });
  });
}
