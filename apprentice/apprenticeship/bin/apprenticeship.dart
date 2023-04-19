import 'dart:math';
import 'package:characters/characters.dart';
import 'package:apprenticeship/apprenticeship.dart' as apprenticeship;
import 'package:test/test.dart';

enum hl {
  lsd,
  sdkls,
}
void main() {
  print('Hello world: ${apprenticeship.calculate()}!');
  jump();
  
  print(isPrime(25));
  Function square = (int n) => n * n;

  print(repeatTask(4, 2, square));
  int funcs(){
    return 3;
  }
}

bool isPrime(int number){
  for (int i = 2;i <number;i++){
    if (number % i == 0){
      return false;
    }
  }
  return true;
}

int repeatTask(int times,int input, Function task){
  for (int i = 0;i <times;i++){
    input = task(input);
  }
  return input;
}

// just a comment for jumping
///documentation for jump
jump() {
  print("object");
  print(4 / 2);
  print(5 ~/ 4);
}

