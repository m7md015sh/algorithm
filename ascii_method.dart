void asciiMethod(String input) {
  input = input.toLowerCase();

  List<int> charCount = List.filled(128, 0);

  for (int i = 0; i < input.length; i++) {
    int asciiValue = input.codeUnitAt(i);
    charCount[asciiValue]++;
  }

  for (int i = 0; i < 128; i++) {
    if (charCount[i] > 0) {
      String character = String.fromCharCode(i);
      print('char "$character" repeat ${charCount[i]} times');
    }
  }
}

void main() {
  String testInput = "Hello World";
  asciiMethod(testInput);
}
