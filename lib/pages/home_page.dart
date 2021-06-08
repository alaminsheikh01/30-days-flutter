import 'package:flutter/material.dart';
import 'package:practice_from_youtube/models/catalog.dart';
import 'package:practice_from_youtube/widgets/drawer.dart';
import 'package:practice_from_youtube/widgets/item_widget.dart';
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
        body: ListView.builder(
          itemCount: CatalogModel.products.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.products[index],
            );
          },
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
