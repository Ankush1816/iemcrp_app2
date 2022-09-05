import 'package:flutter/material.dart';
import 'package:iemcrp2/pages/Teacher/teacher_details.dart';

class Teacher_home extends StatefulWidget {
  const Teacher_home({Key? key}) : super(key: key);

  @override
  State<Teacher_home> createState() => _Teacher_homeState();
}

class _Teacher_homeState extends State<Teacher_home> {

  Teacher_details _td =new Teacher_details(name: "Kajari Sur", id: 123);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(_td.name),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.person)),
        ],
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20,),
          InkWell(
            onTap: (){},
            child: Card(
              color: Colors.blue[100],
              shadowColor: Colors.blue[200],
              child: Column(
                children: [
                  SizedBox(height: 20,),

                  Text('Create Attendence Quiz',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontFamily: 'OldStandardTT',
                  ),),
                  SizedBox(height: 20,),

                ],
              ),


            ),
          )
        ],
      ),
    );
  }
}
