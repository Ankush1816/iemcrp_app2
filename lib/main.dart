import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:iemcrp2/pages/Authentication/authentication.dart';
import 'package:iemcrp2/pages/Authentication/login.dart';
import 'package:iemcrp2/pages/Student/student_home.dart';
import 'package:iemcrp2/pages/Teacher/teacher_home.dart';
import 'package:iemcrp2/pages/wrapper.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Authenticate(),
      //initialRoute: '/',


      // home: Wrapper(),
    );
  }
}
