import 'package:flutter/material.dart';
import 'package:practice_from_youtube/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int a = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Catelog App"),
        ),
        body: Center(
          child: Container(
            child: Text("Welcome to $a  days of flutter "),
          ),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
