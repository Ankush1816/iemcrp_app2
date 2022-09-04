import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/authenticate');

            },
            icon: Icon(Icons.person, color: Colors.white),
            label: Text(
              'Login as Teacher',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/authenticate');

            },
            icon: Icon(Icons.person, color: Colors.white),
            label: Text(
              'Login as Student',
              style: TextStyle(color: Colors.white, fontSize: 23),
            ),
          )
        ],
      ),
    );
  }
}
