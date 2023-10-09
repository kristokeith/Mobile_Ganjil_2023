import 'dart:io';

void main(List<String> arguments) {
  int mainCode() {
// declare variables
    int oilThatShouldBuy;
    int egg = 0;
// ---[ Write your code after this line ]---
    stdout.write('Logika apa? (Programmer/Orang biasa): ');
    String user = stdin.readLineSync()!.toLowerCase();
    if (user == 'programmer') {
      stdout.write('Ada telur?: ');
      String ada = stdin.readLineSync()!.toLowerCase();
      if (ada == 'ada') {
        egg = 1;
        oilThatShouldBuy = 6;
        print('Minyak goreng yang harus dibeli: $oilThatShouldBuy');
      } else {
        oilThatShouldBuy = 1;
        print('Minyak goreng yang harus dibeli: $oilThatShouldBuy');
      }
    } else {
      stdout.write('Ada telur?: ');
      String ada = stdin.readLineSync()!.toLowerCase();
      if (ada == 'ada') {
        egg = 6;
        oilThatShouldBuy = 1;
        print('Telur yang harus dibeli: $egg');
        print('Minyak goreng yang harus dibeli: $oilThatShouldBuy');
      } else {
        oilThatShouldBuy = 1;
        print('Minyak goreng yang harus dibeli: $oilThatShouldBuy');
      }
    }

// ---[ Do not write or change the code below ]---
    return oilThatShouldBuy;
  }

  mainCode();
}
