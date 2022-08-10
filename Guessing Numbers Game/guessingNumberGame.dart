import'dart:io';
import'dart:math';
void main(){
  print('Hello at Number Geusseing Name !/nReady to playe let\'s start');
  String userGuess;
  int correctGuess,number;
do{
  Random rand= new Random();
  correctGuess=rand.nextInt(101);
stdout.writeln("Enter your geusss number from 1 to 100:\nif you want to leave the game enter 0.");
userGuess=stdin.readLineSync();
try{
number=int.parse(userGuess);
}on FormatException{ 
 print("Enter a valid input try again !");
 continue;
}
if(number<100 && number>1){
    if(number>correctGuess){
      print('Wrong Guess it\'s too high\nThe right guessing is $correctGuess');
    }else if(number<correctGuess && number!=0){
      print('Wrong Guess it\'s too low \nThe right guessing is $correctGuess');
    }else if(number==correctGuess){
    print('Right Guess!$number =$correctGuess');
  } 
}
}while(number!=0);{
  print('Thank you for playing Bye');
}
}
