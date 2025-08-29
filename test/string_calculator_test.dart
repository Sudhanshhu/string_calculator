import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  group('StringCalculator', () {
    final calculator = StringCalculator();
    test(
      'returns 0 for empty string',
      () {
        expect(calculator.add(""), equals(0));
      },
    );

    test(
      'returns number itself for a single number string',
      () {
        expect(calculator.add("1"), equals(1));
      },
    );

    test(
      "return sum of two number separated by comma",
      () {
        expect(
          calculator.add("2,5"),
          equals(7),
        );
      },
    );

    test(
      "return sum of multiple number separated by comma",
      () {
        expect(
          calculator.add("2,5,3,5,3"),
          equals(18),
        );
      },
    );

    test(
      "allow new lines also for delimiters",
      () {
        expect(
          calculator.add("2\n5,3\n5,3"),
          equals(18),
        );
      },
    );

    test("Handles dynamic delimiters which start with // and ends with \n", () {
      expect(
        calculator.add("//;\n2;5;3"),
        equals(10),
      );
    });

    // End
  });
}
