import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/dummy_categories.dart';
import 'category_item.dart';
class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Meals App'),),
        body:GridView(
          padding: const EdgeInsets.all(25),
          children: Dummy_Categories.
          map((e) => CategoryItem(e.title,e.color)).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3/2
          ),)
    );
  }
}
