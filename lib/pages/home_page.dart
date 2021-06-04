import 'package:flutter/material.dart';
import 'package:practice_from_youtube/widgets/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_from_youtube/widgets/theme.dart';

class HomePage extends StatelessWidget {
  int a = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.LisghtTheme(context),
      darkTheme: MyTheme.darkTheme(context),
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
