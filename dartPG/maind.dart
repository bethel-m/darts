import 'dart:io';
import 'dart:math';

class User{
  User(this.name,this.account_no,[this.balance = 0]){}
  String name;
  int account_no;
  double balance;
}

int generateAccountNumber(){
  var rng = Random();
  int acc_no = rng.nextInt(1000000000) + 100000000;
  return acc_no;
}

deposit(User user,double amount){
  user.balance = user.balance + amount;

}

User creatAccount(String name){
  int account_no = generateAccountNumber();
  User new_user = User(name, account_no);
  return new_user;
}
void main(){
  var Users = [];
  while(true){
  print("welcome to dart bank, how may i help you");
  print("press 1 to create an account, press 2 to use an existing account");
  String response = stdin.readLineSync() ?? "";
  if (response == '1'){
    print("enter your details, your name");
    response = stdin.readLineSync() ?? "";
    while (response == null){
      print("please enter a name");
    }
    User new_user = creatAccount(response);
    Users.add(new_user);
  }else if (response == "2"){
    print("what is your name");
    response = stdin.readLineSync() ?? "";
    for( User user in Users){
      if (user.name == response){
        print("user found here are your details");
        print("your name is : ${user.name} ");
        print("your account number is :${user.account_no}");
        print("your balance is : ${user.balance}");
        print("would you like to deposit, press 3 else press anything else to quit");
        response = stdin.readLineSync() ?? "";
        if (response == "3"){
          print("how much would you like to deposit");
          response = stdin.readLineSync() ?? "";
          if (response == "0"){
            print("you cannot deposit 0 naira");

          }else{
            double amount = double.parse(response);
            deposit(user, amount);
          }
        }else{
          print("have a nice day");
        }
      }else{
        print("sorry you do not have an account with us");
      }
    }
  }else{
    print("invalid response");
  }
  }
}