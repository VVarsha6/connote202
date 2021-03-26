import 'package:flutter/material.dart';
import 'schedulescr.dart';
import 'driverscr.dart';
import 'Notes.dart';

class NotesScreen extends StatefulWidget {
  static const id = "notes_scr";
  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      drawer: Sidenav(),
      body: NotesPage(),
    );
  }
}

class Sidenav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Connote',
              style: TextStyle(fontSize: 21, color: Colors.blue),
            ),
          ),
          Divider(color: Colors.grey.shade400),
          ListTile(
            title: Text('Schedule'),
            leading: Icon(Icons.schedule),
            onTap: () {
              Navigator.pushNamed(context, HomePage.id);
            },
          ),
          ListTile(
            title: Text('Driver Informer'),
            leading: Icon(Icons.location_on),
            onTap: () {
              Navigator.pushNamed(context, DriverScreen.id);
            },
          ),
          ListTile(
            title: Text('Notes'),
            leading: Icon(Icons.note_add),
            onTap: () {
              Navigator.pushNamed(context, NotesScreen.id);
            },
          ),
        ],
      ),
    );
  }
}
