import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hiveapp/db/model/data_model.dart';

// List<StudentModel> studentList=[];
ValueNotifier<List<StudentModel>> studentListNotifier=ValueNotifier([]);


Future<void> addStudent(StudentModel value) async {
  // studentList.add(value);
  // studentListNotifier.value.add(value);
 final studDB=await Hive.openBox<StudentModel>('stud_db');
 final _id= await studDB.add(value);//adding to database
  value.id=_id;
 studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
  // debugPrint(value.toString());
}

Future<void> getAllStudents()async{
 final studDB=await Hive.openBox<StudentModel>('stud_db');
 studentListNotifier.value.clear();
 studentListNotifier.value.addAll(studDB.values);
 studentListNotifier.notifyListeners();
}

Future<void> deleteStudent(int id)async{
   final studDB=await Hive.openBox<StudentModel>('stud_db');
   await studDB.delete(id);
   getAllStudents();

}