import 'dart:io';
import 'dart:math';
void main(){
  mathGame();
}
mathGame(){
  int num1,num2,operation,x;
  var score=0,result;
  Random rand=new Random();//generate random numbers
  stdout.writeln('Welcome at Math Game\nEnter how many questions you want to solve:');
  String numberOfQuestions=stdin.readLineSync();
  for(int i=1;i<=x;i++){
     num1=rand.nextInt(100);//0-99
     num2=rand.nextInt(100);
    operation=rand.nextInt(4);//123 
    switch(operation){
        case 0:
        stdout.writeln("$num1+$num2=");
        result=stdin.readLineSync();
        //condition(num1, num2,operation,result,score);
         if(operation==0){// addition
      if(num1+num2==double.parse(result)){
        print('Correct !');
        score++;
      }else{
        print('Wrong !');
      }
    }else if(operation==1){
      if(num1-num2==double.parse(result)){
        print('Correct !');
        score++;
      }else{
        print('Wrong !');
      }
    }else if(operation==2){
      if(num1*num2==double.parse(result)){
        print('Correct!');
        score++;
      }else {
        print('Wrong!');
      }
    }else if(operation==3){
      if(num1/num2==double.parse(result)){
        print('Correct!');
        score++;
      }else{
        print('Wrong!');
      }
    }
        break;
      case 1:
        stdout.writeln('$num1-$num2=');
        result=stdin.readLineSync();
        //condition(num1, num2,operation,result,score);
         if(operation==0){// addition
      if(num1+num2==double.parse(result)){
        print('Correct!');
        score++;
      }else{
        print('Wrong!');
      }
    }else if(operation==1){
      if(num1-num2==double.parse(result)){
        print('Correct!');
        score++;
      }else{
        print('Wrong!');
      }
    }else if(operation==2){
      if(num1*num2==double.parse(result)){
        print('Correct!');
        score++;
      }else {
        print('Wrong!');
      }
    }else if(operation==3){
      if(num1/num2==double.parse(result)){
        print('Correct!');
        score++;
      }else{
        print('Wrong!');
      }
    }
        break;
      case 2:
        stdout.writeln('$num1 x $num2=');
        result=stdin.readLineSync();
        //condition(num1, num2,operation,result,score);
         if(operation==0){// addition
      if(num1+num2==double.parse(result)){
        print('Correct!');
        score++;
