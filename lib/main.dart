import 'package:flutter/material.dart';
import 'assignmentscr.dart';
import 'mapsscr.dart';
import 'schedulescr.dart';
import 'driverscr.dart';
import 'notesscr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conote',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        MapsScreen.id: (context) => MapsScreen(),
        AssignmentScreen.id: (context) => AssignmentScreen(),
        NotesScreen.id: (context) => NotesScreen(),
        DriverScreen.id: (context) => DriverScreen(),
      },
    );
  }
}
