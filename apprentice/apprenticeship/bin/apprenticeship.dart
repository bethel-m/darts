import 'dart:math';
import 'package:characters/characters.dart';
import 'package:apprenticeship/apprenticeship.dart' as apprenticeship;

void main() {
  print('Hello world: ${apprenticeship.calculate()}!');
  jump();

  const int age = 22;
  int dogs = 3;
  dogs++;
  print(dogs);

  const x = 46;
  const y = 10;
  const answer1 = (x * 100) + y;
  const answer2 = (x * 100) + (y * 100);
  const answer3 = (x * 100) + (y / 10);
  print("${answer2},${answer3},${answer1}");

  double rating1 = 23.4;
  double rating2 = 232.23;
  double rating3 = 89;
  final averageRating = (rating1 + rating2 + rating3) / 3;
  const a = 3;
  const b = 12;
  const c = 8;

  final root1 = (-b + sqrt(pow(b , 2) - 4 * a * c)) / (2 * a);
  final root2 = (-b - sqrt(pow(b , 2) - 4 * a * c)) / (2 * a);
  print("roots: $root2,$root1");
  print(root1.runtimeType);
  var multi = 23;
  final fists = (root1 * multi).toInt();
  var salut = "👩‍👩‍👧‍👦";
  print(salut.runes.length);
  print(salut.codeUnits.length);
  print(salut.characters.length);

  final message = StringBuffer();
  message.write("wetin");
  message.write(" de sup");
  message.write("rison for dem ");
  message.writeln("Nothing much");
  message.toString();
  print(message);
  print('I \u2764 Dart\u2100');
  dynamic lsd = "dsfas";
  Object sldff = 32;
  print(lsd.runtimeType);
  print(sldff.runtimeType);
  lsd = 23;
  sldff = "sds";
  print(lsd.runtimeType);
  print(sldff.runtimeType);
}

// just a comment for jumping
///documentation for jump
jump() {
  print("object");
  print(4 / 2);
  print(5 ~/ 4);
}
