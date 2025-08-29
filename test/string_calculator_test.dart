import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  group('StringCalculator', () {
    test('Add method is not defined so it is Red flag for TDD', () {
      final calculator = StringCalculator();
      expect(calculator.add(''), 0);
    });
  });
}
