import 'package:flutter/material.dart';
import 'package:hiveapp/screens/home/widgets/add_student_widget.dart';
import 'package:hiveapp/screens/home/widgets/list_student_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AddStudentWidget(),
            const Expanded(child: ListStudentWidget())
          ],
        )),
    );
  }
}