import 'dart:io';
//to run this file  in visual studio code write(dart lib/main.dart)

void main() {
  // welcome message
  print("================      welcome in calc     ==================");
  // all button of calc
  print("7      8      9      * ");
  print("4      5      6      / ");
  print("1      2      3      + ");
  print("       0      =      - ");
  print("----------------------- ");
//now make user input number
  try {
    bool stop = false;
    while (!stop) {
      print("First Number");
      double numberOne = double.parse(stdin.readLineSync()!);
      print("Secon Number");
      double numberTwo = double.parse(stdin.readLineSync()!);
      print('Enter an operator (+, -, *, /) or type  E');
      String operator = stdin.readLineSync()!;

      double result = 0;

      switch (operator) {
        case '+':
          result = numberOne + numberTwo;
          break;
        case '-':
          result = numberOne - numberTwo;
          break;
        case '*':
          result = numberOne * numberTwo;
          break;
        case '/':
          result = numberOne / numberTwo;
          break;
        case 'E':
          stop = true;
          break;
        default:
          print('Invalid operator');
          continue;
      }

      if (!stop) {
        print('Result: $result');
        print("------------------");
      }
    }
  } catch (ex) {
    print("Not number");
  }
}
