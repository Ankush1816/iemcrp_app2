import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Student_home extends StatefulWidget {
  const Student_home({Key? key}) : super(key: key);

  @override
  State<Student_home> createState() => _Student_homeState();
}

class _Student_homeState extends State<Student_home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
              child: ListView(children: <Widget>[
            Container(
              height: 200,
              width: 500,
              color: Colors.indigo,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // height: 94,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0, top: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: CircleAvatar(maxRadius: 25,
                              backgroundColor: Colors.yellow,
                            ),
                          ),
                          Column(
                           // mainAxisAlignment: MainAxisAlignment.start,
                           // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              (Column(
                                children: const [
                                  Text(
                                    'Name of user',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'Roll',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                        child: Image.network(
                      'https://i1.wp.com/iemgroup.s3.amazonaws.com/uploads/2017/12/IEM_New_Logo.jpg?fit=1458%2C1190&ssl=1',
                      width: 50,
                      height: 50,
                    )),
                  ),
                ],
              ),
            )
          ])),
          Column(
            children: <Widget>[],
          )
        ],
      ),
    );
  }
}
