//1
void main() {
  print(sum(2, 3));
}

int sum(int a, int b) {
  return a + b;
}
//2
void main() {
  print(sum(2, 3));
  print(sum(2));
}

int sum(int a, [int b]) {
  if (b == null) {
    b = 0;
  }
  return a + b;
}
//3
void main() {
  print(sum(a: 2, b: 3));
  print(sum(a: 2));
}

int sum({int a, int b = 0}) {
  return a + b;
}
//noberapa gatau
int add(int a, int b) {
  return a + b;
}

var myFunction = add;

// Anonymous function dengan satu parameter
var sayHello = (name) => print('Hello, $name!');

// Anonymous function dengan dua parameter
var sum = (int x, int y) => x + y;

// Anonymous function dengan tipe data opsional
var multiply = (int x, [int y]) => x * (y ?? 1);


//lexical scope
void main() {
  var language = 'Dart'; // lexical scope of variable
  print('What Language: $language');
}

//lexical closure
Function adder(num n) {
  return (num i) => n + i; // lexical closure
}

void main() {
  var add2 = adder(2);
  var add4 = adder(4);
  print(add2(3)); // Output: 5
  print(add4(3)); // Output: 7
}

//mulval 1
List<int> foo() {
  return [42, 24];
}

//mulval 2
Map<String, dynamic> bar() {
  return {'name': 'John', 'age': 30};
}

//mulval 3
class Point {
  int x;
  int y;
  
  Point(this.x, this.y);
}

Point baz() {
  return Point(10, 20);
}

//mulval 4
import 'package:tuple/tuple.dart';

Tuple2<int, String> demo() {
  return Tuple2(42, "life is good");
}

void main() {
  final result = demo();
  if (result.item1 > 20) {
    print(result.item2);
  }
}