import 'dart:math';
import 'package:characters/characters.dart';
import 'package:apprenticeship/apprenticeship.dart' as apprenticeship;
import 'package:test/test.dart';

enum hl {
  lsd,
  sdkls,
}
void main() {
  var lss = hl.lsd;
  print(lss.index);
  print(hl);
switch (lss){
  case hl.lsd:
  print("object");
  break;
  case hl.sdkls:
  print("object");
  break;
}
  print('Hello world: ${apprenticeship.calculate()}!');
  jump();

  var attendance = (90 * 20)/100;
  var homework = (80 * 30)/100;
  var exam = (80 * 50)/100;
  final grade = exam + homework + attendance;
  print("attendance: $attendance%,homework: $homework%,exam :$exam%");
  print("grade ${grade.toInt()}");

  const rom = "🇷🇴";
  const chad = "🇹🇩";
print("objec------------------------------t");
  for (var codepoint in rom.runes){
    print(String.fromCharCode(codepoint));
  }
print(rom);
print("objec------------------------------t");
  for (var codepoint in rom.codeUnits){
    print(String.fromCharCode(codepoint));
    print(codepoint);
  }
print("objec------------------------------t");
  for (var codepoint in rom.characters){
    print(codepoint);
  }

  print(rom.codeUnits);
  print("${rom.runes} is romania");
  print("${chad.runes} is chad");
  print(chad.codeUnits);

  const vote = "Thumbs up! 👍🏿";
  print(vote.codeUnits);
  print(vote.runes);
  print(vote.characters.length);
  const value = 10 / 2;
  const number = 10;
const multiplier = 5;
 final summary = '$number \u00D7 $multiplier = ${number * multiplier}';
 print(summary);
}

// just a comment for jumping
///documentation for jump
jump() {
  print("object");
  print(4 / 2);
  print(5 ~/ 4);
}
