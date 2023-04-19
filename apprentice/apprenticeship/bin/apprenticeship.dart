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
  int result = mood("bad")??0;
}

int? mood(String mood){
  if(mood=="good"){
    return 42;
  }
  return null;
}

class Name{
  String givenName;
  String? surname;
  bool surnameIsFirst;
  Name(this.givenName,this.surname,this.surnameIsFirst);

  @override
  String toString() {
    // TODO: implement toString
    if (surname==null){
      return givenName;
    }
    if (surnameIsFirst){
      return "$surname $givenName";
    }
    return "$givenName $surname";
  }
}