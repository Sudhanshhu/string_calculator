class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    final List<String> numListString = numbers.split(",").toList();
    final List<int> numList = numListString.map(int.parse).toList();
    return numList.reduce((a, b) => a + b);
  }
}
