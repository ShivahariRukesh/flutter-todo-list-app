import 'package:flutter/material.dart';

typedef TodoListMap = List<Map<String, String>>;

class TodoListModel extends ChangeNotifier {
  final TodoListMap _todolist = [
    {"title": "SN", "description": "Something new"},
    {"title": "NN", "description": "Nothing new"},
  ];

  TodoListMap get todolist => _todolist;

  void add(Map<String, String> todo) {
    _todolist.add(todo);
    notifyListeners();
  }

  void removeAll() {
    _todolist.clear();
    notifyListeners();
  }
}
