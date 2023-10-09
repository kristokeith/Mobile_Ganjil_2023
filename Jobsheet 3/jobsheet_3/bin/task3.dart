import 'dart:io';

void main(List<String> args) {
  void main() {
    stdout.write('Berapa bintang?: ');
    var star = int.parse(stdin.readLineSync()!);
    int row = star;

    while (row >= 1) {
      int bintang = 1;
      while (bintang <= row) {
        stdout.write('*');
        bintang++;
      }
      stdout.write('\n'); 
      row--;
    }
  }

  main();
}
