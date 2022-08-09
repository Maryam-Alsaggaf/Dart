//1-Countdown three numbers. 
//2-Only display even numbers.
//3-list items should be ascending.
void main(){
  countdown(int num){
    List <int> evenNumbers=[];
    while(num>0){
      num =num-3;
      if(num%2==0 && num>0){
        evenNumbers.add(num);
      }
    evenNumbers.sort();
    }print(evenNumbers);
    if(evenNumbers.isEmpty){
      int zero=0;
      evenNumbers.add(zero);
      print(evenNumbers);
    }
  }
  countdown(10);
  countdown(23);
  countdown(103);
  countdown(15);

}
