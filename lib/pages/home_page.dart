import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:practice_from_youtube/models/catalog.dart';
import 'package:practice_from_youtube/widgets/drawer.dart';
import 'package:practice_from_youtube/widgets/item_widget.dart';
import 'package:practice_from_youtube/widgets/theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int a = 20;

  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    print(decodedData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(5, (index) => CatalogModel.products[0]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.LisghtTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Catelog App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            },
          ),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
