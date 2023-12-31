import 'package:flutter/material.dart';
import 'package:hiveapp/db/functions/db_functions.dart';
import 'package:hiveapp/db/model/data_model.dart';

class AddStudentWidget extends StatelessWidget {
   AddStudentWidget({super.key});

   final _namecontroller=TextEditingController();
   final _agecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(
           controller: _namecontroller,
           decoration: InputDecoration(
            border: OutlineInputBorder(),
            label:Text('Name') ,
            hintText: 'Name'
           ),
          ),
          const SizedBox(height: 10,), 
          TextFormField(
           controller: _agecontroller,
           decoration: InputDecoration(
            border: OutlineInputBorder(),
            label:Text('Age') ,
            hintText: 'Age'
           ),
          ),
          const SizedBox(height: 10,),
          ElevatedButton.icon(
            onPressed: (){
              onAddStudentButtonClicked();
            },
           icon: Icon(Icons.add), 
           label: Text('Add Student'))
        ],
      ),

    );
  }

 Future<void> onAddStudentButtonClicked()async{
  
   final _name=_namecontroller.text.trim();
   final _age=_agecontroller.text.trim();
   if(_name.isEmpty||_age.isEmpty){
    return;
   }
    print('$_name $_age');
   final _student= StudentModel(name: _name, age: _age);
    addStudent(_student);
   
  }
}