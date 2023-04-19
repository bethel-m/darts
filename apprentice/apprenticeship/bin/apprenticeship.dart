
void main() {
const para = 'Once upon a time there was a Dart programmer who '
    'had a challenging challenge to solve. Though the challenge was great, '
    'a solution did come. The end.';
  print(unique(para));
  print(count(para));
  var user1 = User(1,"bob");
  var user2 = User(2,"grace");
  var user3 = User(3,"tam");
  var userList = [user1,user2,user3];
  print(conv(userList));
}

Set unique(String text){
  Set<String> un = {};
  var all = text.split(" ");
  all.forEach((element) { 
    un.add(element);
    }
  );
  return un;
}
Map<String,int> count(String text){
  Map<String,int> vals = {};
  var all = text.split(" ");
  for (String word in all){
    if (vals.containsKey(word)){
      vals[word]=vals[word]!+1;
    }else{
      vals[word]=1;
    }
  }
  return vals;
}

class User{
  int id;
  String name;
  User(this.id,this.name);

}
List<Map<String,String>> conv(List<User> users){
  var usermap = <Map<String,String>>[];
  for (var user in users){
    Map<String,String> umap={};
    umap[user.id.toString()]=user.name;
    usermap.add(umap);
  }
  return usermap;
}