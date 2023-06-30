import 'package:flutter/material.dart';
import 'package:hiveapp/db/model/data_model.dart';

// List<StudentModel> studentList=[];
ValueNotifier<List<StudentModel>> studentList=ValueNotifier([]);


void addStudent(StudentModel value){
  // studentList.add(value);
  studentList.add(value);
}