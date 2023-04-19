void main() {
  final bert =  Student("bert","ernie",3);
  print(bert);
  var spe = Sphere(12);
  print(spe.area);
  print(spe.volume);
}

class Student{
  final String firstName;
  final String lastName;
  int grade;
  Student(this.firstName,this.lastName,this.grade);
  @override
  String toString() {
    // TODO: implement toString
    return "$firstName scored $grade";
  }
}

class Sphere{
  //A=4πr2 V=4/3(πr3)
  static const double pi= 3.14159265359;
  const Sphere(this.radius)
  : assert(radius>=0);
  final double radius ;
  double get volume{
    double v = (4/3)*pi*radius*radius*radius;
    return v;
  }
  double get area{
    double a = 4 * pi * radius * radius;
    return a;
  }
}