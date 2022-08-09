import 'dart:io';
import 'dart:math';
void main(){
print('Welcome to RocK Scissor Paper Game !\n\nThe Rules are:\n\n1- it consist of two players\n\n2-Scissors beats paper\n\n3-Paper beats rock\n\n4-Rock beats scissors\n\n5-If the two players come up with the same gesture, then it is a tie\n\nReady to play !\nlet\'s start');
stdout.writeln('Do you want to play with the (C)omputer or your (F)riend ?');
String player=stdin.readLineSync();
rockScissorPaperGame(player);
}
gameRefree(firstMove,secondMove,secondPlayerName,firstPlayerName) {
  if(firstMove==secondMove){
    print('Tie!');
  } 
  else if(firstMove=='p' && secondMove=='r'){
    print('The winner between ${firstPlayerName} and ${ secondPlayerName} is ${firstPlayerName}');
  } 
  else if(firstMove=='r'&& secondMove=='s'){
      print('The winner between ${firstPlayerName}and ${secondPlayerName} is ${firstPlayerName}');
  } 
  else if(firstMove=='s'&& secondMove=='p'){
    print('The winner between ${firstPlayerName} and ${secondPlayerName} is ${firstPlayerName} ');
  }else{
    print('The winner between ${firstPlayerName} and ${secondPlayerName} is ${secondPlayerName}');
  }
}
playTheGame(String player){
String firstPlayerChoice,secondPlayerChoice,firstPlayerMove,secondPlayerMove,computerMove,firstPlayerName,secondPlayerName;
  int computerDefine;
if(player.toUpperCase()=='F'){
  stdout.writeln('First player enter your name :');
  String firstPlayerName=stdin.readLineSync();
  stdout.writeln('Second player enter your name :');
  secondPlayerName=stdin.readLineSync();
while(true){
      stdout.writeln('$firstPlayerName enter your move (P)aper (R)ock (S)cissor:');
    firstPlayerChoice=stdin.readLineSync(); if(firstPlayerChoice.toUpperCase()=='P'||firstPlayerChoice.toUpperCase()=='R'||firstPlayerChoice.toUpperCase()=='S'){
        switch(firstPlayerChoice.toUpperCase()){
            case'P':
            firstPlayerMove='p';
            break;
            case'R':
            firstPlayerMove='r';
            break;
            case'S':
            firstPlayerMove='s';
            break;
        }
      }else{
        print('Enter a vaild so you can play,try again!');
        playTheGame(player);
      }
    stdout.writeln('$secondPlayerName enter (P)aper (R)ock (S)cissor:');
      secondPlayerChoice=stdin.readLineSync(); if(secondPlayerChoice.toUpperCase()=='P'||secondPlayerChoice.toUpperCase()=='R'||secondPlayerChoice.toUpperCase()=='S'){
        switch(secondPlayerChoice.toUpperCase()){
            case'P':
            secondPlayerMove='p';
            break;
            case'R':
             secondPlayerMove='r';
            break;
            case'S':
             secondPlayerMove='s';
            break;
        }
  gameRefree(firstPlayerMove,secondPlayerMove,secondPlayerName,firstPlayerName);
      }else{
        print('Enter a vaild so you can play,try again!');
        playTheGame(player);
      }
}
  }else if(player.toUpperCase()=='C'){
    secondPlayerName='Computer';
  stdout.writeln('Enter your name :');
  firstPlayerName=stdin.readLineSync();
    while(true){
    print("Ready to play with the computer let's start!");
      stdout.writeln('Enter your move (P)aper (R)ock (S)cissor:');
      firstPlayerChoice=stdin.readLineSync(); if(firstPlayerChoice.toUpperCase()=='P'||firstPlayerChoice.toUpperCase()=='S'||firstPlayerChoice.toUpperCase()=='R'){
         switch(firstPlayerChoice.toUpperCase()){
            case'P':
            firstPlayerMove='p';
            break;
            case'R':
            firstPlayerMove='r';
            break;
            case'S':
            firstPlayerMove='s';
            break;
         }
    Random rand=new Random();
   computerDefine=rand.nextInt(3);
    switch(computerDefine){
      case 0:
        computerMove='p';
        break;
      case 1:
        computerMove='r';
        break;
      case 2:
        computerMove='s';
        break;
    }
        gameRefree(firstPlayerMove,        computerMove,secondPlayerName,firstPlayerName);
      }else{
        print('You should have enterd a a valid input try again '); 
        playTheGame(player);
      } 
    }  
  }
}
rockScissorPaperGame(String player){
  String secondTry;
  if(player.toUpperCase()=='F'){
    playTheGame(player);
  }else if(player.toUpperCase()=='C'){
     playTheGame(player);   
  }else{
    print('Enter a valid input !\n try again!');
    stdout.writeln('Do you want to play with the (C)omputer or your(F)riend ?');
    secondTry=stdin.readLineSync();
    rockScissorPaperGame(secondTry);
  } 
}
