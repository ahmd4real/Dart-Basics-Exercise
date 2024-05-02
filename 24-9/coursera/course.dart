import 'lecture.dart';
import 'sheet.dart';

class Course{
 late String name;
 late String description;

 List<Sheet>sheets=[];
 List<Lecture>lecs=[];

 void addNewLecture(Lecture l){
  lecs.add(l);
 }

 void deleteLecture(String name){
    int index=-1;
  for (int i=0;i<lecs.length;i++){
    if(lecs[i].name==name){
    index=i; 
    break;
    }
  }
  if (index==-1) print('lecture not found');
  else{
    lecs.removeAt(index);
  }

 }

 void addNewSheet(Sheet l){
  sheets.add(l);
 }

 void deleteSheet(int number){
  
  int index=-1;
  for (int i=0;i<sheets.length;i++){
    if(sheets[i].number==number){
    index=i; 
    break;
    }
  }
  if (index==-1) print('Sheet not found');
  else{
    sheets.removeAt(index);
  }

 }

 void showLecs(){
  print('Lectures'); //print(lecs.length);
  lecs.forEach((element) {print('name:${element.name} ,description:${element.description} ,filename:${element.filename}');});
 }

 void showSheets(){
  print('Sheets');
  sheets.forEach((element) {print('number:${element.number} ,description:${element.description} ,filename:${element.filename}');});
 }




}