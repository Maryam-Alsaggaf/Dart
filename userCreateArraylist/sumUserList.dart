import 'dart:io';
void main(){
    int elements;
    int x=0;
    int count=1;
    int index;
    int total=0;
    List<int> sumList= new List<int>();
    stdout.writeln('enter the numbers of elemnts of your list?');
    String readElements=stdin.readLineSync();
    elements =int.parse(readElements);
    while(x<elements){
        stdout.writeln('enter index $count :');
        String readElement=stdin.readLineSync();
        index=int.parse(readElement);
        sumList.add(index);
        total=sumList[x]+total;
        //print(sumList);
        x++;
        count++;
        //total=0+total;
    }print('total of the list $sumList = $total');
    
}
