class StringCalculator {
  int add(String numbers) {
    final delimiters = RegExp('[,\\n]');
    if (numbers.isEmpty) {
      return 0;
    }
    final List<String> numListString = numbers.split(delimiters).toList();
    final List<int> numList = numListString.map(int.parse).toList();
    return numList.reduce((a, b) => a + b);
  }
}
