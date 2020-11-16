import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Icon icon;
  final String numberTask;
  final Color color;

  const Category({
    @required this.id,
    @required this.title,
    @required this.icon,
    this.numberTask,
    this.color = Colors.orange,
  });
}
