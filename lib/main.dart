import 'package:flutter/material.dart';
import './ui/category.dart';
import './ui/login_page.dart';
import './ui/idea_maker.dart';
import './ui/employee_reg.dart';
import './ui/sponsor.dart';



void main() {
  runApp(MaterialApp(
    title: "Login Page",
    home: Navigation(),

    //debugShowCheckedModeBanner: false,
  ));
}

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Navigation",
      routes: <String, WidgetBuilder>{
        "/login_page": (BuildContext context) => new MyLoginPage(),
        "/category": (BuildContext context) => new Tabs(),
        "/idea_maker": (BuildContext context) => new Idea_Maker(),
        "/sponsor": (BuildContext context) => new Sponsor(),
        "/employee": (BuildContext context) => new Employee(),
      },
      home: new MyLoginPage(),
    );
  }
}


