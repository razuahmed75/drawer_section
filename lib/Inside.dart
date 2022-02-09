// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Inside extends StatelessWidget {
  static const path = "inside";
  const Inside({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inside"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ],

        automaticallyImplyLeading: false,
        // leading: Icon(Icons.menu),
      ),
      body: Container(
        // width: 300,
        color: Colors.green,
        child: Center(
          child: Text(
            "Hello world",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Arial",
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
