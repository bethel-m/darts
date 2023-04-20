import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> main() async{
  try{
    final url = 'https://jsonplaceholder.typicode.com/comments';
    final parsedUrl = Uri.parse(url);
    final response = await http.get(parsedUrl);
    final statusCode = response.statusCode;
    if (statusCode == 200){
      final rawJsonString = response.body;
      //print("$rawJsonString,==${rawJsonString.runtimeType}");
      final jsonMap = jsonDecode(rawJsonString);
      //print("$jsonMap == ${jsonMap.runtimeType}");
      //final comments = Comment.fromJson(jsonMap);
      //print("$comments == ${comments.runtimeType}");
      List<Comment> commentList=[];
      for (var com in jsonMap){
        var comment = Comment.fromJson(com);
        commentList.add(comment);
      } 
      print(commentList);
  }else{
    throw HttpException("$statusCode");
  }
  }on SocketException catch(error){
    print(error);
  }on HttpException catch(error){
    print(error);
  }on FormatException catch (error){
    print(error);
  }finally{
    print("done");
    }


  final url = Uri.parse('https://raywenderlich.com');
  final client = http.Client();
  final request = http.Request('GET',url);
  final response = await client.send(request);
  final stream = response.stream;

  final stringStream = stream.transform(utf8.decoder);
  StreamSubscription<String>? subscription;
  subscription = stringStream.listen(
    (event) { 
      print(event.length);
    },
    onError: (error){
        print("an error occured");
        print(error);
    },
    onDone: () {
      print("all done");
      subscription?.cancel();
    },
    );
}

class Comment{
  final postId;
  final id;
  final name;
  final email;
  final body;

  Comment({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
    });
  factory Comment.fromJson(Map<String,Object?> jsonMap){
    return Comment(
      postId: jsonMap['postId'] as int,
      id: jsonMap['id'] as int,
      name: jsonMap['name'] as String,
      email: jsonMap['email'] as String,
      body: jsonMap['body'] as String,
       );
  }
  @override
  String toString() {
    // TODO: implement toString
    return "comment: $id";
  }
}
class Todo{
  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(Map<String,Object?> jsonMap){
    return Todo(
      userId: jsonMap['userId'] as int,
      id: jsonMap['id'] as int,
      title: jsonMap['title'] as String,
      completed: jsonMap['completed'] as bool,
    );
  }

  final int userId;
  final int id;
  final String title;
  final bool completed;

  @override
  String toString() {
    return 'userId: $userId\n'
            'id: $id\n'
            'title: $title\n'
            'completed: $completed';
  }
}

// void playHideAndSeekTheLongVersion(SendPort sendPort){
//   var counting = 0;
//   for (var i = 1; i <= 1000000000;i++){
//     counting = i;
//   }
//   sendPort.send("$counting! Ready or not, here i come!");
// }



int fibonacci(int n){
  var current = 1;
  var previous = 1;
  var done = 2;
  while (done < n) {
    final next = current + previous;
    previous = current;
    current = next;
    done += 1;
  }
  return current;
}