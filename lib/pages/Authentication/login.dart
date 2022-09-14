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
                  icon: Image.network('https://media.4-paws.org/e/8/2/7/e82789b9dc8a986d3b61c0aa7610affeecb93933/VIER%20PFOTEN_2015-04-27_010-1927x1333.jpg'),
                  //icon: Image.asset('lib/assets/images/teacher_avatar.png'),
                  iconSize: 150,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Teacher',
                  style: TextStyle(
                    color: Colors.white,
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
                    Image.network('https://i.postimg.cc/tRk1xvb3/skynews-pug-dog-5774995.jpg'),
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
