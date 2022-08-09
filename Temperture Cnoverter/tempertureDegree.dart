import 'dart:io';
void main(){
stdout.writeln('Enter a for Celsius temerature\nand b Fahrenheit teperature');
  readingInput();
}
readingInput(){
  String readFirstInput=stdin.readLineSync(); 
  while(readFirstInput.toUpperCase()!='A'&& readFirstInput.toUpperCase()!='B'){
    print('please try again');
    stdout.writeln('Enter A for Celsius and B for Fahrenheit');
    readFirstInput=stdin.readLineSync();
  }
  calculate(readFirstInput);
}
calculate(String temp){
  if(temp.toUpperCase()=='A'||temp.toUpperCase()=='B'){
    stdout.writeln('enter temperture:');
    String intnum=stdin.readLineSync();
    int number=int.parse(intnum);
    switch(temp.toUpperCase()){
        case'A':
        print("Celsius to Fahrenheit ${number * 1.8 + 32} Fahrenheit");
        break;
        case'B':
        print("Fahrenheit to  Celsius${(number - 32) / 1.8}  Celsius");
        break;
    }
  }
}
