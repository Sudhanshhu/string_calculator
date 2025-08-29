class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    final List<String> delimiters = [',', '\n'];
    String numString = numbers;

    if (numbers.contains("//")) {
      final delimiterTillIndex = numbers.indexOf("\n");
      final String delimitter = numbers.substring(2, delimiterTillIndex);
      delimiters.add(delimitter);
      numString = numbers.substring(delimiterTillIndex + 1);
    }
    final pattern = delimiters.map(RegExp.escape).join('|');
    final List<String> numListString =
        numString.split(RegExp(pattern)).toList();
    final List<int> numList = numListString.map(int.parse).toList();
    return numList.reduce((a, b) => a + b);
  }
}
