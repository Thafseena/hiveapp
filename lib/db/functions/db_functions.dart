import 'package:flutter/material.dart';
import 'package:hiveapp/db/model/data_model.dart';

// List<StudentModel> studentList=[];
ValueNotifier<List<StudentModel>> studentListNotifier=ValueNotifier([]);


void addStudent(StudentModel value){
  // studentList.add(value);
  studentListNotifier.value.add(value);
}