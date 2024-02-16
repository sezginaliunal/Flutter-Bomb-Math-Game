import 'dart:math';

class MathGameLogic {
  late int number1;
  late int number2;
  late String operation;
  late int result;
  List<String> operations = ['+', '-', 'x', '/'];

  void generateNumbers() {
    Random random = Random();

    // Generate number1 between 1 and 9
    number1 = random.nextInt(99) + 1;

    // Generate number2 between 1 and number1 (to avoid negative numbers)
    number2 = random.nextInt(number1) + 1;

    // Random operation
    operation = operations[random.nextInt(4)];

    // Calculate result based on operation
    switch (operation) {
      case '+':
        result = number1 + number2;
        break;
      case '-':
        // Ensure number1 is greater than or equal to number2
        while (number1 - number2 < 0) {
          number2 = random.nextInt(number1) + 1;
        }
        result = number1 - number2;
        break;
      case 'x':
        result = number1 * number2;
        break;
      case '/':
        // Avoid division by zero
        while (number1 % number2 != 0) {
          number2 = random.nextInt(9) + 1;
        }
        result = number1 ~/ number2;
        break;
    }
  }

  bool checkResult(String input) {
    int userInput;
    try {
      userInput = int.parse(input);
      return userInput == result;
    } catch (e) {
      return false;
    }
  }
}
