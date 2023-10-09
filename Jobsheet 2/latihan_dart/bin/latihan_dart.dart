import 'package:latihan_dart/latihan_dart.dart' as latihan_dart;
import 'dart:io';

void main(List<String> arguments) {
  stdout.write('Nama Anda: ');
  String nama = stdin.readLineSync()!;
  stdout.write('Usia Anda: ');
  int age = int.parse(stdin.readLineSync()!);
  print('Halo $nama, usia anda $age tahun');

  print('Hello world: ${latihan_dart.calculate()}!');
}
