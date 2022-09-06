import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iemcrp2/pages/Student/student_profile.dart';

class Student_home extends StatefulWidget {
  const Student_home({Key? key}) : super(key: key);

  @override
  State<Student_home> createState() => _Student_homeState();
}

class _Student_homeState extends State<Student_home> {
  //takes exam code as an input
  final _textController = TextEditingController();

  //For clearing the text
  void clearText() {
    _textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(0.9),
        elevation: 0,
        title: Text('Quiz'),
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [
          CircleAvatar(
            maxRadius: 20,
            backgroundColor: Colors.yellow,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (Context) => StudentProfile()));
              },
              child: Container(
                child: (Image.network(
                  'https://cdn.pixabay.com/photo/2017/06/13/12/53/profile-2398782_1280.png',
                )),
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white.withOpacity(0.1),
          child: ListView(
            children: [
              DrawerHeader(child: CircleAvatar(radius: 30)),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => Student_home()));
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Profile',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => StudentProfile()));
                },
              ),

            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          height: 200,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                    hintText: 'Exam code',
                    // border: OutlinedBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          clearText();
                        },
                        icon: Icon(Icons.clear))),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.blue,
                child: Text('Submit', style: TextStyle(color: Colors.white)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
