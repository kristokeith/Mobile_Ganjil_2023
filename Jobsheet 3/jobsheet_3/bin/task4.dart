import 'dart:io';

void main(List<String> args) {
  void main() {
    print('===CALCULATOR===');
    stdout.write('Enter the first number: ');
    var firstNumber = int.parse(stdin.readLineSync()!);
    stdout.write('Enter the second number: ');
    var secondNumber = int.parse(stdin.readLineSync()!);
    stdout.write('Enter the operator: ');
    var operator = stdin.readLineSync()!;
    switch (operator) {
      case '+':
        print(
            '$firstNumber $operator $secondNumber = ${firstNumber + secondNumber}');
        break;
      case '-':
        print(
            '$firstNumber $operator $secondNumber = ${firstNumber - secondNumber}');
        break;
      case '*':
        print(
            '$firstNumber $operator $secondNumber = ${firstNumber * secondNumber}');
        break;
      case '/':
        print(
            '$firstNumber $operator $secondNumber = ${firstNumber / secondNumber}');
        break;
      default:
        print('Operator not found');
    }
  }

  main();
}
