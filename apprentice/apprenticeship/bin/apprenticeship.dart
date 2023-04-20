
void main() {
var p1 = Platypus(23);
var p2 = Platypus(36);
var p3 = Platypus(89);
var p4 = Platypus(90);
print(p1.compareTo(p2));
List pl = [p1,p2,p3,p4];
pl.sort();
print(pl);

var data1 = DataRepository(23);
print(data1);
print(data1.runtimeType);
print(data1.numberOfTasks());

var kls= Duration();
var m = 2.minutes;
print(m);
}


class Platypus implements Comparable{
  final int wieght;

  layEggs(){
    print("plob plob");
  }
  eat(){
    print("munch munch");
  }
  Platypus(this.wieght);
  
  @override
  int compareTo(other) {
      if (wieght > other.wieght){
        return 1;
      }else{
        if (wieght < other.wieght){
          return -1;
        }
      }
    return 0;
    //throw UnimplementedError();
  }
  @override
  String toString() {
    // TODO: implement toString
    return "i weigh $wieght";
  }
}



abstract class DataRepository{
  int numberOfTasks(){
    return 34;
  }
  factory DataRepository(int taks){
    return Mockdata(taks);
  }
}

class Mockdata implements DataRepository{
  int userTasks;
  Mockdata(this.userTasks);
  @override
  int numberOfTasks() {
    return userTasks;
  }
  @override
  String toString() {
    // TODO: implement toString
    return "user has $userTasks tasks";
  }
}


extension on int{
  Duration get minutes => Duration(minutes: this);
}