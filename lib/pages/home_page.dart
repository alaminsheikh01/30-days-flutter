import 'package:flutter/material.dart';
import 'package:practice_from_youtube/widgets/drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  int a = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Catelog App",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
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
