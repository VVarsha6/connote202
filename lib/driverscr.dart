import 'package:flutter/material.dart';
import 'components/Roundedbutton.dart';
import 'notesscr.dart';
import 'schedulescr.dart';

class DriverScreen extends StatefulWidget {
  static const id = "drivers_scr";
  @override
  _DriverScreenState createState() => _DriverScreenState();
}

class _DriverScreenState extends State<DriverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driver Informer'),
      ),
      drawer: Sidenav(),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RoundedButton(
              buttonColor: Colors.lightBlueAccent,
              buttonText: 'Late by < 10 minutes',
              action: () {
                _showMyDialog(context);
              },
            ),
            RoundedButton(
              buttonColor: Colors.lightBlueAccent,
              buttonText: 'Will be coming',
              action: () {
                _showMyDialog(context);
              },
            ),
            RoundedButton(
              buttonColor: Colors.lightBlueAccent,
              buttonText: 'Will not be coming',
              action: () {
                _showMyDialog(context);
              },
            )
          ],
        ),
      ),
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

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Center(child: Text('Sent to driver')),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('The driver will respond soon'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
