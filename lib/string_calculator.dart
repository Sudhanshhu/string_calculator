class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final tokens = _tokenize(numbers);
    final values = tokens.map(int.parse).toList();

    _throwIfNegatives(values);

    return values.fold(0, (a, b) => a + b);
  }

  List<String> _tokenize(String input) {
    final delimiters = [',', '\n'];
    var numString = input;

    if (input.startsWith('//')) {
      final delimiterTillIndex = input.indexOf('\n');
      final delimiter = input.substring(2, delimiterTillIndex);
      delimiters.add(delimiter);
      numString = input.substring(delimiterTillIndex + 1);
    }

    final pattern = delimiters.map(RegExp.escape).join('|');
    return numString.split(RegExp(pattern)).where((s) => s.isNotEmpty).toList();
  }

  void _throwIfNegatives(List<int> numbers) {
    final negatives = numbers.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception("negative numbers not allowed ${negatives.join(',')}");
    }
  }
}
