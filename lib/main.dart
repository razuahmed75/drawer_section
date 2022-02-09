// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, use_full_hex_values_for_flutter_colors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Home.dart';
import 'package:flutter_application_2/Inbox.dart';
import 'package:flutter_application_2/Inside.dart';
import 'package:flutter_application_2/route_animation.dart';
//import 'package:flutter_application_2/homepage.dart';

import 'Person.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // initialRoute: Inside.path,
      routes: {
        Home.path: (context) => Home(),
        Inside.path: (cnx) => Inside(),
        Inbox.path: (context) => Inbox(),
        Person.path: (context) => Person()
      },
    );
  }
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: const [
            Icon(Icons.home),
            Icon(
              Icons.alarm_add,
            ),
          ],
          backgroundColor: Colors.orange,
          title: Text(
            "Row|Column",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Arial",
              fontSize: 20,
              letterSpacing: 1.3,
            ),
          ),
          centerTitle: true,
          leading: Builder(
            builder: (context) => IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(Icons.menu)),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Color(0xFFB1F2B36),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  CustomMethod(),
                  CustomWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget CustomMethod() {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/gif.gif"),
          fit: BoxFit.cover,
        ),
      ),
      accountName: Text("Razu ahmed"),
      accountEmail: Text("razuahmed8641@gmail.com"),
      currentAccountPicture: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.lightGreen,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: ClipOval(
              child: Image.asset("images/background1.jpg",
                  fit: BoxFit.cover, width: 100, height: 100)),
        ),
      ),
      // currentAccountPictureSize: Size.square(100)
    );
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                  context, CupertinoPageRoute(builder: (context) => Home()));
            },
            leading: Icon(
              (Icons.home),
              color: Colors.white,
            ),
            title: Text("Home", style: TextStyle(color: Colors.white)),
            trailing: Icon(Icons.chevron_right),
            iconColor: Colors.white,
          ),
          Divider(
            thickness: 0.3,
            color: Colors.black,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 0.3, color: Colors.black))),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(createRoute(Inbox()));
              },
              leading: Icon(
                (Icons.email),
                color: Colors.white,
              ),
              title: Text("Inbox", style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.chevron_right),
              iconColor: Colors.white,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 0.3, color: Colors.black))),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(createRoute(Person()));
              },
              leading: Icon(
                (Icons.person),
                color: Colors.white,
              ),
              title: Text("Person", style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.chevron_right),
              iconColor: Colors.white,
            ),
          ),

          // Custom ListTile Widget//
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? trailing;
  const CustomListTile({Key? key, this.leading, this.title, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          leading ?? Container(),
          title ?? Container(),
          SizedBox(width: 90),
          trailing ?? Container(),

          // SizedBox(width: 90), //This is second one method
        ],
      ),
    );
  }
}
