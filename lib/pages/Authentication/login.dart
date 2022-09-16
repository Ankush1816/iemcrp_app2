import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 33,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
        elevation: 0,
      ),
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(1, 150, 1, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/authenticate');
                  },
                  icon: Image.network('https://i.postimg.cc/cJ1hg5Ww/teacher-avatar.png'),
                  //icon: Image.asset('lib/assets/images/teacher_avatar.png'),
                  iconSize: 150,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Teacher',
                  style: TextStyle(
                    color: Color(0xFFdffff),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 50,
            ),
            Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/authenticate');
                  },
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 86, 177, 224),
                    radius: 80,
                    child:
                    Image.network('https://i.postimg.cc/pXnDmMng/student-avatar.png'),
                    //Image.asset('lib/assets/images/student_avatar.png',fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Student',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
