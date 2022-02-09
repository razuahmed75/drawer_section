// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Inside.dart';
import 'package:flutter_application_2/route_animation.dart';

class Home extends StatefulWidget {
  static const path = "home";
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
//  Route _createRoute(){
//    return PageRouteBuilder(
//     pageBuilder: (c, a1, a2) => Inside(),
//     transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
//     transitionDuration: Duration(milliseconds: 2000),
//   );
//   }
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
              onPressed: () =>
                  Navigator.of(context).push(createRoute(Inside())),
              icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigator.pop(context);
            Navigator.of(context).push(createRoute(Inside()));
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (cnx) => Inside()));
          },
          child: const Text("Hello World"),
        ),
      ),
    );
  }
}
