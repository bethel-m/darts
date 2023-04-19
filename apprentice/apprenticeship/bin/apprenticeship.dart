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

  var number = 946;
  var n = 0;
  while(true){
    if (pow(2,n)>= number){
      print("found it");
      print("its 2 raise power of $n");
      break;
    }
    n++;
  }

  var nth=1;
  var n1 = 1;
  var n2 = 1;
  var nv;
  if (nth == 0 || nth == 1){
    print("the $nth fibonacci is 1");
  }
if (nth > 2){  for (int i=2;i < nth;i++){
     nv = n1 + n2;
     n1 =n2;
     n2 = nv;

  }
  print("the $nth fibonacci number is $nv");
  }


  for(int i = 10;i >= 0; i--){
    print(i);
  }

  for (int i = 0; i <= 10; i++){
  print(i/10);
}

var func = (int jds){
  return 423;
};

const numbers = [3,4,5,7];
numbers.forEach((element) {
  final tripled = element * 3;
  print(tripled);
});
}


// just a comment for jumping
///documentation for jump
jump() {
  print("object");
  print(4 / 2);
  print(5 ~/ 4);
}
