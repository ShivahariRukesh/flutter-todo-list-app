import 'package:flutter/material.dart';

typedef TodoListMap = List<Map<String, String>>;

class TodoListModel extends ChangeNotifier {
  final TodoListMap _todolist = [
    {
      "title": "Presentation",
      "description":
          "Its important, complete the presentation slides and prepare for it",
    },
    {
      "title": "Jogging",
      "description":
          "Do one hour jogging minium or cover 20 miles",
    },
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
