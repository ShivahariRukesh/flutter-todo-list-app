import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/home.dart';
import 'package:todoapp/model/list_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TodoListModel(),
      child: Home(),
    ),
  );
}
