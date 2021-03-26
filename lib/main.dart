import 'package:flutter/material.dart';
import 'assignmentscr.dart';
import 'mapsscr.dart';
import 'schedulescr.dart';
import 'driverscr.dart';
import 'notesscr.dart';
import 'welcomescr.dart';
import 'registerscr.dart';
import 'loginscr.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();

    return MaterialApp(
      title: 'Conote',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        MapsScreen.id: (context) => MapsScreen(),
        AssignmentScreen.id: (context) => AssignmentScreen(),
        NotesScreen.id: (context) => NotesScreen(),
        DriverScreen.id: (context) => DriverScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
