import 'package:flutter/material.dart';

class MapsScreen extends StatelessWidget {
  static const id = "maps_scr";
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
                    image: AssetImage('images/image.jpg'), fit: BoxFit.cover)),
          ),
        ),
      ],
    ));
  }
}
