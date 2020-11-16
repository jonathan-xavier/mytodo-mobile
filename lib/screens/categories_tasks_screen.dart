import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoriesTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(category.title),
      ),
      body: _body(),
    );
  }

  _body() {
    return Center(
      child: Text('Tarefas por a categoria'),
    );
  }
}
