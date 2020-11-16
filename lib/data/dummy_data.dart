import 'package:flutter/material.dart';
import 'package:mytodo/models/category.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: '1',
    title: 'Todas tarefas',
    icon: Icon(Icons.assignment),
    numberTask: '24 tarefas',
    color: Colors.amber,
  ),
  Category(
    id: '2',
    title: 'Trabalho',
    icon: Icon(Icons.work),
    numberTask: '24 tarefas',
    color: Colors.redAccent,
  ),
  Category(
    id: '3',
    title: 'musica',
    icon: Icon(Icons.headset),
    numberTask: '24 tarefas',
    color: Colors.purple,
  ),
  Category(
    id: '4',
    title: 'Viagem',
    icon: Icon(Icons.airplanemode_active),
    numberTask: '24 tarefas',
    color: Colors.green,
  ),
  Category(
    id: '5',
    title: 'Estudo',
    icon: Icon(Icons.book),
    numberTask: '24 tarefas',
    color: Colors.indigo,
  ),
];
