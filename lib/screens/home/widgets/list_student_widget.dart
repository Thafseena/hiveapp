import 'package:flutter/material.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (cxt,  index) { 
       return ListTile(
        title: Text('Name $index'),
        subtitle: Text('Age $index'),
       );
       },
        itemCount: 50, 
        separatorBuilder: ( cxt,  index) { 
          return Divider();
      },);
  }
}