import 'dart:io';

void main(List<String> args) {
  stdout.write('Masukkan suhu dalam Fahrenheit: ');
  var Fahrenheit = num.parse(stdin.readLineSync()!);
  var Celcius = (Fahrenheit - 32) * 5 / 9;
  var Kelvin =  Celcius + 273.15;
  var Reamur = (4 / 5) * Celcius;
  print("$Fahrenheit°F = $Celcius °C");
  print("$Fahrenheit°F = $Kelvin K");
  print("$Fahrenheit°F = $Reamur °R");
}
