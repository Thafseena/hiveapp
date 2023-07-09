import 'package:flutter/material.dart';
import 'package:hiveapp/db/functions/db_functions.dart';
import 'package:hiveapp/db/model/data_model.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder: (BuildContext ctx, List<StudentModel> studentList,Widget? child) {
        return  ListView.separated(
        itemBuilder: (cxt,  index) { 
          final data=studentList[index];
         return ListTile(
          title: Text(data.name),
          subtitle: Text(data.age),
          trailing: IconButton(onPressed: (){
            if(data.id !=null){
             deleteStudent(data.id!);
            }else{
              debugPrint("Unable to delete ........");
            }
            
          }, icon: Icon(Icons.delete,color: Colors.red,)),
         );
         },
          itemCount: studentList.length, 
          separatorBuilder: ( cxt,  index) { 
            return Divider();
        },);
        
      },
      /* child: ListView.separated(
        itemBuilder: (cxt,  index) { 
         return ListTile(
          title: Text('Name $index'),
          subtitle: Text('Age $index'),
         );
         },
          itemCount: 50, 
          separatorBuilder: ( cxt,  index) { 
            return Divider();
        },), */
    );
  }
}