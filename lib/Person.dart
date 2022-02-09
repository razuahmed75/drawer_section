import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  static const path = "person";
  const Person({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Person"),
      ),
      body: Center(child: Text("Person")),
    );
  }
}
