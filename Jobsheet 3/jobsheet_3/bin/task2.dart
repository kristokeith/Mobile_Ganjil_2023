import 'dart:io';

void main(List<String> args) {
  void main() {
    stdout.write('Berapa bintang?: ');
    var star = int.parse(stdin.readLineSync()!);
    for (int i = 1; i <= star; i++) {
      for (int j = 1; j <= i; j++) {
        // Cetak bintang untuk setiap nilai j dalam loop inner
        stdout.write('*');
      }
      // Cetak karakter baris baru untuk pindah ke baris berikutnya
      print('');
    }
  }

  main();
}
