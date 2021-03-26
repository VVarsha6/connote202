import 'package:connoteapp202/schedulescr.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'components/Roundedbutton.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:toast/toast.dart';
import 'package:flutter/services.dart';
import 'constants.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'login_scr';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  final idtextcontroller1 = TextEditingController();
  final idtextcontroller2 = TextEditingController();
  String email;
  String password;
  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 48.0,
              ),
              TextField(
                controller: idtextcontroller1,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                  //Do something with the user input.
                },
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                controller: idtextcontroller2,
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                  //Do something with the user input.
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your password.'),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                buttonText: 'Log In',
                buttonColor: Colors.lightBlueAccent,
                action: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final existinguser = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (existinguser != null) {
                      Navigator.pushNamed(context, HomePage.id);
                    }
                  } on PlatformException catch (error) {
                    showToast(error.message,
                        duration: Toast.LENGTH_LONG, gravity: Toast.CENTER);
                  } catch (e) {
                    showToast(e.toString(),
                        duration: Toast.LENGTH_LONG, gravity: Toast.CENTER);
                  }
                  setState(() {
                    showSpinner = false;
                    idtextcontroller1.clear();
                    idtextcontroller2.clear();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }
}
