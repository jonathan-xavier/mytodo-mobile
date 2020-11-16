import 'package:flutter/material.dart';
import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 2 / 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      children: DUMMY_CATEGORIES.map((cat) {
        return CategoryItem(cat);
      }).toList(),
    );
  }
}
