import 'dart:collection';

HashMap<String, int> countCharacters(String input) {
  HashMap<String, int> charCount = HashMap<String, int>();

  input = input.toLowerCase();
  for (int i = 0; i < input.length; i++) {
    String char = input[i];

    charCount[char] = (charCount[char] ?? 0) + 1;
  }

  return charCount;
}

void main() {
  String testInput = "Hello World";
  HashMap<String, int> charCount = countCharacters(testInput);
  print(charCount);
}
