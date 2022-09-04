import 'package:flutter/material.dart';
import 'package:iemcrp2/pages/Authentication/authentication.dart';
import 'package:iemcrp2/pages/wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Wrapper(),
        '/authenticate': (context) => Authenticate(),
      },

      // home: Wrapper(),
    );
  }
}
