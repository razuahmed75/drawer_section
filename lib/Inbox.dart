import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  static const path = "inbox";
  const Inbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inbox"),
      ),
      body: Center(child: Text("Empty")),
    );
  }
}
