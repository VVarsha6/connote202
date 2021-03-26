import 'package:flutter/material.dart';

class AssignmentScreen extends StatefulWidget {
  static const id = "assignment_scr";
  @override
  _AssignmentScreenState createState() => _AssignmentScreenState();
}

class _AssignmentScreenState extends State<AssignmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/assignment.jpg'),
                    fit: BoxFit.contain)),
          ),
        ),
      ],
    ));
  }
}
