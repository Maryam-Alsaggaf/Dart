void main(){
  List <String> students=["Khaild","Ali","Sameer"];
  List <double> grades =[99.3,87,7,65.7];
    studentGradeSystem(double studentGrade,String studentName){
    if(studentGrade<=100 && studentGrade>=95){
      print("$studentName A+");
    } else if (studentGrade<=94 && studentGrade>=90){
      print("$studentName A");
    }else if(studentGrade<=89 && studentGrade>=85){
      print("$studentName B+");
    }else if(studentGrade<85 && studentGrade>=80){
      print("$studentName B");
    }else if(studentGrade<=79 && studentGrade>=75){
      print("$studentName C+");
    }else if(studentGrade<75 && studentGrade>=70){
      print("$studentName C");
    }else if(studentGrade<=69 && studentGrade>=65){
      print("$studentName D+");
    }else if(studentGrade<65 && studentGrade>=60){
      print("$studentName D");
    }else if(studentGrade<=59 && studentGrade>=0){
      print("$studentName F");
    }    
}
  int num=0;
  for (num; num<=students.length-1; num++){
    studentGradeSystem(grades[num],students[num]);
    

  }
}
